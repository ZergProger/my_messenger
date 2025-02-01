import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_messenger/firebase/firebase_auth/firebase_service.dart';
import 'package:my_messenger/firebase_options.dart';
import 'package:my_messenger/pages/chats_page/chats_page.dart';
import 'package:my_messenger/pages/login_page/login_page.dart';
import 'package:my_messenger/pages/register_page/register_page.dart';
import 'package:my_messenger/pages/register_page/verify_email.dart';
import 'package:my_messenger/rec/theme.dart';
import 'package:my_messenger/utils/route_name.dart';
import 'package:my_messenger/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyMessenger());
}

class MyMessenger extends StatelessWidget {
  MyMessenger({super.key});
  final firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: route(FirebaseService().currentUser ==
              null
          ? LoginPage
          : FirebaseService().currentUser!.emailVerified ==
                  false
              ? VerifyEmail
              : HomePage),
      routes: generateRoutes(),
    );
  }
}
