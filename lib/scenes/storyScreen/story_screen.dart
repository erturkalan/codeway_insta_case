import 'package:codeway_insta_case/scenes/storyScreen/story_box.dart';
import 'package:codeway_insta_case/utils/base_getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import '../../models/user_model.dart';

class StoryScreen extends StatefulWidget {
  final List<User> users;
  final Function onStoryClosed;
  final int index;
  const StoryScreen(this.users, this.onStoryClosed, this.index, {Key? key})
      : super(key: key);

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(StoryScreenController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CarouselSlider.builder(
        controller: controller.carouselController,
        initialPage: widget.index,
        slideBuilder: (itemIndex) {
          return itemIndex ==
                  widget.users.length -
                      1 // If the last user story dragged right, pop it.
              ? SizedBox.expand(
                  child: GestureDetector(
                    onHorizontalDragUpdate: (details) {
                      // Note: Sensitivity is integer used when you don't want to mess up vertical drag
                      int sensitivity = 8;
                      if (details.delta.dx > sensitivity) {
                        controller.carouselController
                            .previousPage(const Duration(milliseconds: 580));
                      } else if (details.delta.dx < -sensitivity) {
                        Navigator.pop(context);
                        widget.onStoryClosed();
                      }
                    },
                    child: StoryBox(
                      user: widget.users[itemIndex],
                      onStoryClosed: widget.onStoryClosed,
                      leftToAnotherStory: () {
                        controller.carouselController
                            .previousPage(const Duration(milliseconds: 580));
                      },
                      rightToAnotherStory: () {
                        Navigator.pop(context);
                        widget.onStoryClosed();
                      },
                      storyChanged: (index) {
                        widget.users[itemIndex].currentStoryIndex.value = index;
                      },
                    ),
                  ),
                )
              : StoryBox(
                  user: widget.users[itemIndex],
                  onStoryClosed: widget.onStoryClosed,
                  leftToAnotherStory: () {
                    controller.carouselController
                        .previousPage(const Duration(milliseconds: 580));
                  },
                  rightToAnotherStory: () {
                    controller.carouselController
                        .nextPage(const Duration(milliseconds: 580));
                  },
                  storyChanged: (index) {
                    widget.users[itemIndex].currentStoryIndex.value = index;
                  },
                );
        },
        slideTransform: CubeTransform(),
        itemCount: widget.users.length,
      ),
    );
  }
}

class StoryScreenController extends BaseGetxController {
  final carouselController = CarouselSliderController();
}
