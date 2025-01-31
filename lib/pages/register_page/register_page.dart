import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_messenger/firebase/firebase_auth/firebase_service.dart';
import 'package:my_messenger/pages/login_page/login_page.dart';
import 'package:my_messenger/pages/login_page/widgets/text_fiend.dart';
import 'package:my_messenger/pages/register_page/widgets/elevated_button.dart';
import 'package:my_messenger/rec/button_style.dart';
import 'package:my_messenger/rec/text_style.dart';
import 'package:my_messenger/rec/texts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _controllerRepeatPassword =
      TextEditingController();
  final TextEditingController _controllerEmail =
      TextEditingController();
  final TextEditingController _controllerPassword =
      TextEditingController();
  bool isShowErrorRepeatPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            AppTexts.register,
            style: AppTextStyle.appBarText,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              TextFiendCustom(
                iconFiend: Icons.email,
                enterTextHelp: AppTexts.enterEmail,
                controller: _controllerEmail,
              ),
              SizedBox(
                height: 5,
              ),
              TextFiendCustom(
                iconFiend: Icons.password,
                enterTextHelp: AppTexts.enterPassword,
                controller: _controllerPassword,
              ),
              SizedBox(
                height: 5,
              ),
              TextFiendCustom(
                iconFiend: Icons.password,
                enterTextHelp: AppTexts.repeatPassword,
                controller: _controllerRepeatPassword,
              ),
              ElevatedButtonSubmit(
                  controllerEmail: _controllerEmail,
                  controllerPassword: _controllerPassword,
                  controllerRepeatPassword:
                      _controllerRepeatPassword,
                  isShowErrorRepeatPassword:
                      isShowErrorRepeatPassword),
              if (isShowErrorRepeatPassword == false)
                Text(
                    'You have entered the password incorrectly'),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    _controllerRepeatPassword.dispose();
  }
}
