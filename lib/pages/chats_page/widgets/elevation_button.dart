import 'package:flutter/material.dart';
import 'package:my_messenger/rec/text_style.dart';

class ElevationButtonMenu extends StatelessWidget {
  const ElevationButtonMenu({
    super.key,
    required this.textOfTheButton,
    required this.nameToNavigatorPush,
    required this.elevatedButtonStyle,
  });
  final String textOfTheButton;
  final Widget nameToNavigatorPush;
  final ButtonStyle elevatedButtonStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: elevatedButtonStyle,
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => nameToNavigatorPush)),
        child: Text(
          textOfTheButton,
          style: AppTextStyle.submit,
        ));
  }
}
