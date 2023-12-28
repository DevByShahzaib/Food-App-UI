import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget,
    );
  }
}

PreferredSizeWidget AppbarWidget = AppBar(
  title: Text(
    'Food App',
    style: TextStyle(color: Color(0xffb70038)),
  ),
  elevation: 0.0,
  backgroundColor: Color(0xFFF5F5F3),
  centerTitle: true,
  leading: InkWell(
    onTap: () {},
    child: Container(
      height: 30,
      width: 50,
      decoration: iconDecoration,
      margin: EdgeInsets.only(left: 10),
      child: Icon(
        Icons.menu,
        color: Colors.black,
      ),
    ),
  ),
  actions: [
    InkWell(
      onTap: () {},
      child: Container(
        height: 30,
        width: 50,
        margin: EdgeInsets.symmetric(horizontal: 13),
        decoration: iconDecoration,
        child: Icon(
          Icons.notifications_none,
          color: Colors.black,
        ),
      ),
    )
  ],
);
