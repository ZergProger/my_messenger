import 'package:flutter/material.dart';
import 'package:my_messenger/rec/button_style.dart';

class ElevationButtonMenu extends StatelessWidget {
  const ElevationButtonMenu({super.key, required this.textOfTheButton, required this.nameToNavigatorPush});
  final String textOfTheButton;
  final Widget nameToNavigatorPush;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: AppButtonStyle.driverButtonMenu,
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => nameToNavigatorPush)),
        child: Text(textOfTheButton));
  }
}
