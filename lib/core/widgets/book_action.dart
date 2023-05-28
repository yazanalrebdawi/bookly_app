import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.backGroung,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
  });
  final String text;
  final double? fontSize;
  final Color backGroung;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backGroung,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16.0))),
          onPressed: () {},
          child: Text(
            text,
            style: styles.textStyle14.copyWith(
                fontSize: fontSize ?? 18,
                color: textColor,
                fontWeight: FontWeight.w900),
          )),
    );
  }
}
