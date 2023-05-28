import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBAr extends StatelessWidget {
  const CustomBookDetailsAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
        )
      ],
    );
  }
}
