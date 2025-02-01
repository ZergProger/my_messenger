import 'package:flutter/material.dart';
import 'package:my_messenger/firebase/firebase_auth/firebase_service.dart';
import 'package:my_messenger/pages/register_page/verify_email.dart';
import 'package:my_messenger/rec/button_style.dart';
import 'package:my_messenger/rec/text_style.dart';
import 'package:my_messenger/rec/texts.dart';

class ElevatedButtonSubmit extends StatelessWidget {
  ElevatedButtonSubmit(
      {super.key,
      required this.controllerPassword,
      required this.controllerRepeatPassword,
      required this.controllerEmail,
      required this.isShowErrorRepeatPassword});
  final TextEditingController controllerPassword;
  final TextEditingController controllerRepeatPassword;
  final TextEditingController controllerEmail;
  final bool isShowErrorRepeatPassword;
  final FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (controllerRepeatPassword.text ==
            controllerPassword.text) {
          firebaseService.onRegister(controllerEmail.text,
              controllerPassword.text);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VerifyEmail(),
              ));
        } else {}
      },
      style: AppButtonStyle.submitButtonStyle,
      child: Text(
        AppTexts.submit,
        style: AppTextStyle.submit,
      ),
    );
  }
}
