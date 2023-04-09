import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/user_model.dart';

class UserBox extends StatelessWidget {
  final Function onTap;
  final User user;

  const UserBox({
    required this.onTap,
    required this.user,
    Key? key,
  }) : super(key: key);

  bool get userWatchedAllStories {
    return user.storyGroup.every((element) => element.isSeen.value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 2.5,
                  color: userWatchedAllStories
                      ? Colors.grey.withOpacity(0.5)
                      : Colors.orange),
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              )),
          child: CachedNetworkImage(
            imageUrl: user.profileImageUrl,
            imageBuilder: (context, imageProvider) => Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => const CupertinoActivityIndicator(
              radius: 10,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
