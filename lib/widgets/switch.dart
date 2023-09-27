import 'package:flutter/material.dart';

Widget switchCase(int condition, String text) {
  switch (condition) {
    case 1:
      return Text(text);
    case 2:
      return Text(text);
    default:
      return Text(text);
  }
}
