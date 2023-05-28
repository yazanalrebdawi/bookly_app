import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';

class ButtonColeection extends StatelessWidget {
  const ButtonColeection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: BooksAction(
          text: '199',
          backGroung: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        )),
        Expanded(
            child: BooksAction(
          text: 'Free Preview',
          fontSize: 16,
          backGroung: Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        )),
      ],
    );
  }
}
