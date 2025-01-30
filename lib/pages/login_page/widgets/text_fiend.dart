import 'package:flutter/material.dart';

class TextFiendCustom extends StatelessWidget {
  TextFiendCustom({super.key, this.iconFiend, required this.enterTextHelp, this.controller});

  final IconData? iconFiend;
  final String enterTextHelp;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(iconFiend),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: enterTextHelp,
        ),
      ),
    );
  }
}
