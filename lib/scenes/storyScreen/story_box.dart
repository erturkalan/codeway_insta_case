import 'package:cached_network_image/cached_network_image.dart';
import 'package:codeway_insta_case/models/story_model.dart';
import 'package:codeway_insta_case/models/user_model.dart';
import 'package:codeway_insta_case/scenes/storyScreen/user_info.dart';
import 'package:codeway_insta_case/utils/loading_bar.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StoryBox extends StatefulWidget {
  final User user;
  final Function onStoryClosed;
  final Function rightToAnotherStory;
  final Function leftToAnotherStory;
  final Function(int) storyChanged;

  const StoryBox({
    required this.user,
    required this.onStoryClosed,
    required this.leftToAnotherStory,
    required this.rightToAnotherStory,
    required this.storyChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<StoryBox> createState() => _StoryBoxState();
}

class _StoryBoxState extends State<StoryBox>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animController;
  VideoPlayerController? _videoController;
  late int _currentStoryIndex;

  List<Story> get userStories {
    return widget.user.storyGroup;
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    final Story storyToOpen = userStories[widget.user.currentStoryIndex.value];
    _currentStoryIndex = userStories.indexOf(storyToOpen);

    if (storyToOpen.media.type == MediaType.video) {
      _videoController = VideoPlayerController.network(storyToOpen.media.url)
        ..initialize().then((_) {
          setState(() {});
        });
    }
    _loadStory(
        story: storyToOpen, storyIndex: userStories.indexOf(storyToOpen));

    _animController.addStatusListener((status) {
      if (_animController.value == 1) {
        _animController.reset();
        _animController.stop();
        setState(() {
          if (_currentStoryIndex + 1 < userStories.length) {
            _currentStoryIndex += 1;
            _loadStory(
                story: userStories[_currentStoryIndex],
                storyIndex: _currentStoryIndex);
            _moveStory();
          } else {
            _videoController?.pause();
            widget.rightToAnotherStory();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animController.dispose();
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Story story = userStories[_currentStoryIndex];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Dismissible(
          key: const Key("scrollkey"),
          direction: DismissDirection.down,
          dismissThresholds: const {DismissDirection.down: 0.2},
          onDismissed: (_) {
            Navigator.pop(context);
            widget.onStoryClosed();
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GestureDetector(
              onTapDown: _onTapDown,
              onLongPress: _onLongPressDown,
              onLongPressUp: _onLongPressUp,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: userStories.length,
                    itemBuilder: (context, index) {
                      switch (story.media.type) {
                        case MediaType.image:
                          return CachedNetworkImage(
                              imageUrl: story.media.url, fit: BoxFit.cover);
                        case MediaType.video:
                          if (_videoController != null) {
                            return FittedBox(
                              fit: BoxFit.contain,
                              child: SizedBox(
                                width: _videoController!.value.size.width,
                                height: _videoController!.value.size.height,
                                child: VideoPlayer(_videoController!),
                              ),
                            );
                          }
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                  ),
                  Positioned(
                    top: 40,
                    left: 10,
                    right: 10,
                    child: Row(
                      children: userStories
                          .asMap()
                          .map(
                            (i, e) {
                              return MapEntry(
                                i,
                                LoadingBar(
                                  animationController: _animController,
                                  position: i,
                                  currentIndex: _currentStoryIndex,
                                ),
                              );
                            },
                          )
                          .values
                          .toList(),
                    ),
                  ),
                  UserInfo(
                    profileImageUrl: widget.user.profileImageUrl,
                    userName: widget.user.name,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;

    if (dx < screenWidth / 3) {
      _onPressLeft();
    } else if (dx > 2 * screenWidth / 3) {
      _onPressRight();
    }
  }

  void _onPressLeft() {
    setState(() {
      if (_currentStoryIndex - 1 >= 0) {
        _currentStoryIndex -= 1;
        _loadStory(
            story: userStories[_currentStoryIndex],
            storyIndex: _currentStoryIndex);
        _moveStory();
      } else {
        _animController.reset();
        _animController.stop();
        _videoController?.pause();
        widget.leftToAnotherStory();
      }
    });
  }

  void _onPressRight() {
    setState(() {
      if (_currentStoryIndex + 1 < userStories.length) {
        _currentStoryIndex += 1;
        _loadStory(
            story: userStories[_currentStoryIndex],
            storyIndex: _currentStoryIndex);
        _moveStory();
      } else {
        _animController.reset();
        _animController.stop();
        _videoController?.pause();
        widget.rightToAnotherStory();
      }
    });
  }

  void _onLongPressDown() {
    _videoController?.pause();
    _animController.stop();
  }

  void _onLongPressUp() {
    _videoController?.play();
    _animController.forward();
  }

  void _loadStory({required Story story, required int storyIndex}) {
    _animController.reset();
    _animController.stop();
    _videoController?.pause();
    story.isSeen.value = true;
    widget.storyChanged(storyIndex);
    if (story.media is VideoMedia) {
      _videoController = VideoPlayerController.network(story.media.url)
        ..initialize().then(
          (_) {
            setState(() {});
            _animController.duration =
                _videoController?.value.duration ?? Duration.zero;
            _videoController?.play();
            _animController.forward();
          },
        );
    } else if (story.media is ImageMedia) {
      _animController.duration = const Duration(seconds: 5);
      _animController.forward();
    }
  }

  void _moveStory() {
    _pageController.animateToPage(
      _currentStoryIndex,
      duration: const Duration(milliseconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }
}
