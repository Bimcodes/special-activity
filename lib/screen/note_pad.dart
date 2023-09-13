import 'package:flutter/material.dart';
import 'package:my_day/screen/bottomNavigationBar.dart';

class NotePad extends StatelessWidget {
  const NotePad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Notepad',
          style: TextStyle(),
        ),
      ),
      bottomNavigationBar: const BottomScreen(),
    );
  }
}
