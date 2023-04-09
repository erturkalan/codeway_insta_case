import 'package:codeway_insta_case/models/story_model.dart';
import 'package:get/get.dart';

class User {
  final int id;
  final String name;
  final String profileImageUrl;
  final List<Story> storyGroup;
  var currentStoryIndex = 0.obs;

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
