import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_messenger/pages/autorizate_page/login_page.dart';
import 'package:my_messenger/utils/route_name.dart';
import 'package:my_messenger/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyMessenger());
}

class MyMessenger extends StatelessWidget {
  const MyMessenger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: route(AutorizatePage),
      routes: generateRoutes(),
    );
  }
}
