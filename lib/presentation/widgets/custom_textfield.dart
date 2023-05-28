import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextSearch extends StatelessWidget {
  const CustomTextSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          border: OutlineInputBorder(),
          hintText: "Search",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 22,
            ),
          )),
    );
  }
}
