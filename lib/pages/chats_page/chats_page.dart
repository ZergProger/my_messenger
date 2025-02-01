import 'package:flutter/material.dart';
import 'package:my_messenger/pages/chats_page/widgets/driver.dart';
import 'package:my_messenger/rec/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'My messenger',
            style: AppTextStyle.appBarText,
          ),
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          )),
      drawer: DriverMenuMessenger(),
      body: Column(
        children: [],
      ),
    );
  }
}
