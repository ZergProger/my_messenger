import 'package:flutter/material.dart';
import 'package:my_messenger/pages/chats_page/chats_page.dart';
import 'package:my_messenger/pages/login_page/login_page.dart';
import 'package:my_messenger/pages/register_page/register_page.dart';
import 'package:my_messenger/pages/register_page/verify_email.dart';
import 'package:my_messenger/utils/route_name.dart';

Map<String, WidgetBuilder> generateRoutes() {
  return {
    route(LoginPage): (_) => LoginPage(),
    route(RegisterPage): (_) => RegisterPage(),
    route(HomePage): (_) => HomePage(),
    route(VerifyEmail): (_) => VerifyEmail(),
  };
}
