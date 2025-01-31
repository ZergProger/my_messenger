import 'package:flutter/material.dart';
import 'package:my_messenger/pages/login_page/widgets/elevated_button_submit.dart';
import 'package:my_messenger/pages/login_page/widgets/text_fiend.dart';
import 'package:my_messenger/pages/register_page/register_page.dart';
import 'package:my_messenger/rec/text_style.dart';
import 'package:my_messenger/rec/texts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _controllerEmail =
      TextEditingController();
  final TextEditingController _controllerPassword =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          AppTexts.loginText,
          style: AppTextStyle.appBarText,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
              width: 300,
              child: Column(
                children: [
                  TextFiendCustom(
                    enterTextHelp: AppTexts.enterEmail,
                    iconFiend: Icons.email,
                    controller: _controllerEmail,
                  ),
                  TextFiendCustom(
                    enterTextHelp: AppTexts.enterPassword,
                    iconFiend: Icons.password,
                    controller: _controllerPassword,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              width: 250,
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                ),
                child: Text(AppTexts.goRegister),
              ),
            ),
            SubmitButtonLogin(
              controllerEmail: _controllerEmail,
              controllerPassword: _controllerPassword,
            ),
          ],
        ),
      ),
    );
  }
}
