import 'package:flutter/material.dart';

Widget button(
  String title,
  Function ontap,
  Color textColor,
  Color buttonColor,
  Color borderColor,
  double height,
  double width, {
  double? fontSize,
  double? borderRadius,
}) {
  return MaterialButton(
    onPressed: () {
      ontap();
    },
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
      side: BorderSide(color: borderColor),
    ),
    color: buttonColor,
    height: height,
    minWidth: width,
    child: Text(
      title,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize ?? 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
