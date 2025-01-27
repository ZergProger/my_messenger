import 'package:flutter/material.dart';
import 'package:my_messenger/pages/autorizate_page/login_page.dart';
import 'package:my_messenger/utils/route_name.dart';

Map<String, WidgetBuilder> generateRoutes() {
  return {
    route(AutorizatePage): (_) => const AutorizatePage(),
  };
}
