// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:my_day/constants/colors.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function() longpressCallbak;
  const TaskTile({
    required this.longpressCallbak,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null
                // this line of code takes in a bool to add the line through
                ),
      ),
      trailing: Checkbox(
        activeColor: link,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longpressCallbak,
    );
  }
}
