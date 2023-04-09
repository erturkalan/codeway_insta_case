import 'package:codeway_insta_case/scenes/home/tabs/home.dart';
import 'package:codeway_insta_case/scenes/home/tabs/settings.dart';
import 'package:codeway_insta_case/utils/base_getx_controller.dart';
import 'package:codeway_insta_case/dummyData/data.dart';
import 'package:codeway_insta_case/models/user_model.dart';
import 'package:codeway_insta_case/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomePageController());
    final List<Widget> _pages = [
      Home(
        controller: controller,
      ),
      Settings()
    ];
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.grey[50],
        body: _pages[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: controller._navigationBottomBarTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],
        ),
      ),
    );
  }
}

class HomePageController extends BaseGetxController {
  var userList = <User>[].obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    userList.clear();
    for (var element in users) {
      element.storyGroup.clear();
    }
    for (var item in users) {
      var userStories =
          stories.where((story) => story.userId == item.id).toList();
      item.addStoryGroup(userStories);
      userList.add(item);
    }
    super.onInit();
  }

  void _navigationBottomBarTapped(int index) {
    selectedIndex.value = index;
  }
}
