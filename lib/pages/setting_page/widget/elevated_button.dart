import 'package:flutter/material.dart';
import 'package:my_messenger/firebase/firebase_auth/firebase_service.dart';
import 'package:my_messenger/rec/text_style.dart';

class ElevatedButtonCustom extends StatelessWidget {
  const ElevatedButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => FirebaseService().logOut(),
        child: Text(
          'Log Out',
          style: AppTextStyle.submit,
        ));
  }
}
