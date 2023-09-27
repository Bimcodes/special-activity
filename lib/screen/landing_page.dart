// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_day/view/register.dart';
import 'package:my_day/widgets/button.dart';
import 'package:get/get.dart';
import 'package:my_day/constants/colors.dart';
import 'package:my_day/constants/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: h(88, context),
              right: w(24, context),
              left: w(24, context),
            ),
            child: Container(
              height: h(450, context),
              width: w(327, context),
              decoration: BoxDecoration(
                  color: link,
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: h(88, context),
                right: w(24, context),
                left: w(24, context)),
            child: button('Get Started', () {
              Get.to(() => const Register());
            }, white, link, white, 70, 327),
          ),
        ],
      ),
    );
  }
}
