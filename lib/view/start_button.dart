import 'package:flutter/material.dart';
import 'package:my_day/constants/routes.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(0, 40, 40, 40)),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(taskScreenRoute);
        },
        child: const Text(
          'Let\'s Start',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
