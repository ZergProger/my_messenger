import 'package:flutter/material.dart';
import 'package:my_messenger/pages/chats_page/widgets/elevated_button_account.dart';
import 'package:my_messenger/pages/chats_page/widgets/elevation_button.dart';
import 'package:my_messenger/pages/setting_page/setting_page.dart';
import 'package:my_messenger/rec/button_style.dart';
import 'package:my_messenger/rec/texts.dart';

class DriverMenuMessenger extends StatefulWidget {
  const DriverMenuMessenger({super.key});

  @override
  State<DriverMenuMessenger> createState() =>
      _DriverMenuMessengerState();
}

class _DriverMenuMessengerState
    extends State<DriverMenuMessenger> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      width: 340,
      backgroundColor: Colors.white,
      child: Column(
        children: [
          ElevatedButtonAccount(),
          ElevationButtonMenu(
              elevatedButtonStyle:
                  AppButtonStyle.driverButtonMenu,
              textOfTheButton: AppTexts.setting,
              nameToNavigatorPush: SettingPage()),
        ],
      ),
    );
  }
}
