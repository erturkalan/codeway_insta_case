import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String profileImageUrl;
  final String userName;

  const UserInfo({
    Key? key,
    required this.profileImageUrl,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 68,
      left: 12,
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: profileImageUrl,
            imageBuilder: (context, imageProvider) => Container(
              width: 40,
              height: 40,
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
          const SizedBox(
            width: 6,
          ),
          Text(
            userName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
