import 'package:flutter/material.dart';
import 'package:my_messenger/firebase/firebase_auth/firebase_service.dart';
import 'package:my_messenger/main.dart';
import 'package:my_messenger/pages/register_page/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('google ElevatedButtonRegister test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: RegisterPage(),
    ));

    await tester.tap(find.byType(ElevatedButton));
  });
}
