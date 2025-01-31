import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_messenger/firebase/firebase_auth/firebase_service.dart';
import 'package:my_messenger/pages/chats_page/chats_page.dart';
import 'package:my_messenger/rec/text_style.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  User? user = FirebaseService().currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify email',
            style: AppTextStyle.appBarText),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () =>
                  FirebaseService().onVerifyEmail(),
              child: Text(
                'Send email verification',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  user!.reload();
                  if (user!.emailVerified == true) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  }
                },
                child: Text('check'))
          ],
        ),
      ),
    );
  }
}
