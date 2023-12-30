import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: iconDecoration.copyWith(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.search,
                color: Colors.red,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          borderSide: BorderSide(
                              width: 1, color: Colors.deepOrange.shade100)),
                      hintText: "What would you like that have?",
                      hintStyle: TextStyle(fontSize: 15),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Icon(Icons.filter_list),
            ],
          ),
        ),
      ),
    );
  }
}
