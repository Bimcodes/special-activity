import 'package:flutter/material.dart';

import '../constants/size_config.dart';

Widget title(BuildContext context, String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: h(4, context), top: h(10, context)),
    child: Text(text,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: w(14, context), color: Colors.black)),
  );
}
