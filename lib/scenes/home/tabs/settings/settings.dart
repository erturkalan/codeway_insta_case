import 'package:codeway_insta_case/scenes/home/tabs/settings/settings_item.dart';
import 'package:codeway_insta_case/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(K.settingsTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            SettingsItem(
              iconBackgroundColor: Colors.amber,
              onTap: () {
                launchUrl(
                    Uri.parse(
                        "https://github.com/erturkalan/codeway_insta_case"),
                    mode: LaunchMode.platformDefault);
              },
              text: K.seeCodeLabel,
              textColor: Colors.black87,
              iconData: Icon(
                Icons.settings,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
