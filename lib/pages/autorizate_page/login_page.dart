import 'package:flutter/material.dart';
import 'package:my_messenger/pages/autorizate_page/widgets/text_fiend_enter_mail.dart';
import 'package:my_messenger/rec/texts.dart';

class AutorizatePage extends StatelessWidget {
  const AutorizatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EnterMail(),
              TextButton(
                  onPressed: () => Navigator.pushNamed(
                        context,
                      ),
                  child: child)
            ],
          ),
        ),
      ),
    );
  }
}
