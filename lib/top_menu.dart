import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';
import 'package:food_ui_app/dishesList.dart';

class TopMenu extends StatelessWidget {
  List<Map<String, String>> menu = Dishes.dish;
  TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menu.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TopMenuTitles(
                name: menu[index]['name']!,
                imgUrl: menu[index]['imgUrl']!,
              ),
            );
          }),
    );
  }
}

class TopMenuTitles extends StatefulWidget {
  TopMenuTitles({required this.name, required this.imgUrl});

  final String name;
  final String imgUrl;
  @override
  State<TopMenuTitles> createState() => _TopMenuTitlesState();
}

class _TopMenuTitlesState extends State<TopMenuTitles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: iconDecoration
              .copyWith(borderRadius: BorderRadius.circular(10), boxShadow: [
            BoxShadow(
                color: Color.fromARGB(148, 244, 171, 54).withOpacity(0.3),
                blurRadius: 7,
                spreadRadius: 2,
                offset: Offset(0, 4))
          ]),
          child: Image.asset(
            widget.imgUrl,
            width: 60,
            height: 60,
          ),
        ),
        Text(
          widget.name,
          style: TextStyle(
            color: Color(0xFF6E6E71),
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
        )
      ],
    );
  }
}
