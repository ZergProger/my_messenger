import 'package:flutter/material.dart';
import 'package:my_messenger/rec/texts.dart';

class EnterMail extends StatelessWidget {
  EnterMail({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: AppTexts.enterEmail,
          labelText: AppTexts.enterEmail,
        ),
      ),
    );
  }
}
