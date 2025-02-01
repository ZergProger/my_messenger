import 'package:flutter/material.dart';
import 'package:my_messenger/firebase/firebase_auth/firebase_service.dart';
import 'package:my_messenger/pages/chats_page/chats_page.dart';
import 'package:my_messenger/rec/button_style.dart';
import 'package:my_messenger/rec/text_style.dart';
import 'package:my_messenger/rec/texts.dart';

class SubmitButtonLogin extends StatelessWidget {
  const SubmitButtonLogin(
      {super.key,
      required this.controllerEmail,
      required this.controllerPassword});
  final TextEditingController controllerEmail;
  final TextEditingController controllerPassword;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          FirebaseService().onLogin(controllerEmail.text,
              controllerPassword.text);
          if (FirebaseService().currentUser != null) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          }
        },
        style: AppButtonStyle.submitButtonStyle,
        child: Text(AppTexts.submit,
            style: AppTextStyle.submit));
  }
}
