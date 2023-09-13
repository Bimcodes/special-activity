import 'package:flutter/material.dart';
import 'package:my_day/modules/task_data.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
// import 'package:my_day/constants/routes.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: offWhite,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35.0, color: Colors.black),
            ),
            TextField(
              autofocus: true,
              // What autofocus does is thst the moment i tap the add icon, it brings up the keypad directly
              textAlign: TextAlign.center,
              decoration: InputDecoration(fillColor: link),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(link),
                // This function above helps to define the color
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
