import 'package:flutter/material.dart';

import '../constants/colors.dart';
// import '../constants/icon.dart';

Widget textField(TextEditingController controller, TextInputType type,
    {String hintText = "",
    int? maxLength,
    bool? obscured = false,
    required Function onchanged}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: TextFormField(
        autocorrect: false,
        textCapitalization: TextCapitalization.sentences,
        maxLength: maxLength,
        keyboardType: type,
        style: TextStyle(color: black, fontWeight: FontWeight.w500),
        controller: controller,
        obscureText: obscured!,
        validator: (value) {
          if (value!.isEmpty) {
            return 'This field is empty';
          }
          return null;
        },
        decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              color: link,
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
                borderSide: BorderSide(width: 1.0, color: mainGreen)),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(width: 1.0, color: Colors.red)),
            focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(width: 1.0, color: Colors.red)))),
  );
}
