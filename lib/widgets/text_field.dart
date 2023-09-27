import 'package:flutter/material.dart';

import '../constants/colors.dart';
// import '../constants/icon.dart';

TextStyle textstyle() => TextStyle(color: black, fontWeight: FontWeight.w500);

InputDecoration decoration(String hintText) {
  return InputDecoration(
      icon: Icon(
        Icons.person,
        color: black,
      ),
      hintText: hintText,
      hintStyle: TextStyle(
        color: grey,
        fontWeight: FontWeight.w400,
      ),
      contentPadding: const EdgeInsets.all(10.0),
      enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1, color: fill)),
      focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1.0, color: link)),
      errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1.0, color: Colors.red)),
      focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1.0, color: Colors.red)));
}
