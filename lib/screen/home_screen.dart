// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_day/view/start_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 26, 20),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 90.0,
          horizontal: 60.0,
        ),
        child: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Manage your',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
              Text(
                'team & everything',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
              Row(
                children: [
                  Text(
                    'with ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  ),
                  Text(
                    'activity',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'When you\'re overwhelmed by the\namount of work you have on your plate, stop and rethink.',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const StartButton(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
