// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_day/screen/dashboard.dart';
import 'package:my_day/screen/note_pad.dart';
import 'package:my_day/screen/task_screen.dart';
import '../constants/bottomNavigationBarItem.dart';
import '../constants/colors.dart';
import '../constants/icon.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: white,
      selectedItemColor: blue,
      unselectedItemColor: black,
      iconSize: 20,
      items: [
        bottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Get.to(() => const Dashboard());
              },
              icon: icons(Icons.home, black)),
          label: 'Dashboard',
        ),
        bottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Get.to(() => const TaskScreen());
              },
              icon: const Icon(Icons.add_circle)),
          label: 'Add Task',
        ),
        bottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Get.to(() => const NotePad());
              },
              icon: const Icon(Icons.note_add)),
          label: 'Notepad',
        ),
      ],
    );
  }
}
