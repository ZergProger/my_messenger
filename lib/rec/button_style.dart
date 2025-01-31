import 'package:flutter/material.dart';

class AppButtonStyle {
  AppButtonStyle._();

  static ButtonStyle submitButtonStyle =
      ElevatedButton.styleFrom(
    elevation: 30,
    backgroundColor: Colors.red,
    fixedSize: Size(120, 30),
  );
  static ButtonStyle driverButtonMenu =
      ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
    backgroundColor: Colors.red,
    fixedSize: Size(340, 40),
  );
}
