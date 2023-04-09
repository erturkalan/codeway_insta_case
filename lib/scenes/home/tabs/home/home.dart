import 'package:codeway_insta_case/scenes/home/home_page.dart';
import 'package:codeway_insta_case/scenes/home/user_box.dart';
import 'package:codeway_insta_case/scenes/storyScreen/story_screen.dart';
import 'package:codeway_insta_case/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final HomePageController controller;

  const Home({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Center(
          child: Text(
            K.appTitle,
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 100,
            child: Obx(
              () => ListView.builder(
                itemCount: controller.userList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return UserBox(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoryScreen(controller.userList,
                              () => controller.onInit(), index),
                        ),
                      );
                    },
                    user: controller.userList[index],
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(K.appHomeBodyLabel),
            ),
          )
        ],
      ),
    );
  }
}
