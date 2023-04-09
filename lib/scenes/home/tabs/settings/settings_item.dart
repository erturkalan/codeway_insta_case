import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final Color iconBackgroundColor;
  final Widget iconData;
  final String text;
  final Color textColor;
  final VoidCallback onTap;

  const SettingsItem(
      {Key? key,
      required this.iconBackgroundColor,
      required this.iconData,
      required this.text,
      required this.textColor,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 15, 10),
          child: Row(
            children: [
              Container(
                  clipBehavior: Clip.hardEdge,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: iconBackgroundColor,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                      child: iconData)),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SizedBox(width: 10),
              Icon(
                Icons.arrow_outward,
                size: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
