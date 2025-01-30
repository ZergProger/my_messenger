import 'package:flutter/material.dart';

class AppButtonStyle {
  AppButtonStyle._();

  static ButtonStyle submitButtonStyle = ElevatedButton.styleFrom(
    elevation: 30,
    backgroundColor: Colors.red,
    fixedSize: Size(100, 30),
  );
  static ButtonStyle driverButtonMenu = ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: Colors.red,
    fixedSize: Size(100, 30),
  );
}
