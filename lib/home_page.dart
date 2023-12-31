import 'package:flutter/material.dart';
import 'package:food_ui_app/appbar.dart';
import 'package:food_ui_app/constants.dart';
import 'package:food_ui_app/search.dart';
import 'package:food_ui_app/top_menu.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Search(),
            SizedBox(
              height: 5,
            ),
            TopMenu(),
          ],
        ),
      ),
    );
  }
}
