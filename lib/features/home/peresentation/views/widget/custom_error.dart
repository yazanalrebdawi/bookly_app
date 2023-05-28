import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.error});
  final String error;
  @override
  Widget build(BuildContext context) {
    return Text(
      error,
      style: TextStyle(color: Colors.red),
    );
  }
}
