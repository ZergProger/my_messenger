import 'package:flutter/material.dart';
import 'package:my_messenger/pages/account_page/account_page.dart';
import 'package:my_messenger/rec/button_style.dart';
import 'package:my_messenger/rec/text_style.dart';

class ElevatedButtonAccount extends StatelessWidget {
  const ElevatedButtonAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: AppButtonStyle.driverButtonMenu,
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AccountPage(),
            )),
        child: Row(
          children: [
            CircleAvatar(),
            Text(
              'Account',
              style: AppTextStyle.submit,
            ),
          ],
        ));
  }
}
