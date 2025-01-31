import 'package:flutter/material.dart';
import 'package:my_messenger/firebase/firebase_auth/firebase_service.dart';
import 'package:my_messenger/pages/login_page/login_page.dart';
import 'package:my_messenger/rec/button_style.dart';
import 'package:my_messenger/rec/text_style.dart';

class ElevatedButtonCustom extends StatelessWidget {
  const ElevatedButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: AppButtonStyle.submitButtonStyle,
        onPressed: () {
          FirebaseService().logOut();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
        },
        child: Text(
          'Log Out',
          style: AppTextStyle.submit,
        ));
  }
}
