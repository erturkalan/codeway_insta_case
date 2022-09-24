import 'package:codeway_insta_case/models/story_model.dart';

class User {
  final int id;
  final String name;
  final String profileImageUrl;
  final List<Story> storyGroup;

  User({
    required this.id,
    required this.name,
    required this.profileImageUrl,
    required this.storyGroup,
  });

  void addStoryGroup(List<Story> stories) {
    storyGroup.addAll(stories);
  }
}
