import 'package:flutter/material.dart';
import '../static/static.dart';

class CustomloginText extends StatelessWidget {
  const CustomloginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Alredy have an acoun't ",
          style: TextStyle(fontSize: 16),
        ),
        Text(
          " Login ?",
          style: TextStyle(
            color: kPrimaryColor2,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
