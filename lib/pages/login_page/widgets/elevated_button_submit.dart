import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_messenger/pages/chats_page/chats_page.dart';
import 'package:my_messenger/rec/button_style.dart';
import 'package:my_messenger/rec/text_style.dart';
import 'package:my_messenger/rec/texts.dart';

class SubmitButtonLogin extends StatelessWidget {
  SubmitButtonLogin({super.key, required this.controllerEmail, required this.controllerPassword});
  final TextEditingController controllerEmail;
  final TextEditingController controllerPassword;

  final FirebaseAuth _authService = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          String email = controllerEmail.text;
          String password = controllerPassword.text;

          UserCredential userCredential =
              await _authService.createUserWithEmailAndPassword(email: email, password: password);
          User? user = userCredential.user;
          if (user != null) {
            print('Sign in successful');
          }
          FirebaseAuth.instance.authStateChanges().listen((User? user) {
            if (user == null) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            }
          });
        },
        style: AppButtonStyle.submitButtonStyle,
        child: Text(AppTexts.submit, style: AppTextStyle.submit));
  }
}
