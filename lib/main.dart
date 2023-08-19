import 'package:flutter/material.dart';
import 'package:my_day/constants/routes.dart';
import 'package:my_day/modules/task_data.dart';
import 'package:my_day/screen/home_screen.dart';
import 'package:my_day/task_screen.dart';
import 'package:my_day/view/start_button.dart';
import 'package:provider/provider.dart';
// import 'package:my_day/task_tile.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: const HomeScreen(),
        routes: {
          taskScreenRoute: (context) => TaskScreen(),
          splashScreenRoute: (context) => const HomeScreen(),
          startButtonRoute: (context) => const StartButton(),
        },
      ),
    ),
  );
}
