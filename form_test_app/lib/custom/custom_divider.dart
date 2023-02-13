import 'package:flutter/material.dart';

import '../static/static.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Divider(
            color: kPrimaryColor2 ,
            thickness: 1,
            endIndent: 10,
          ),
        ),
        Text('OR'),
        Expanded(
          child: Divider(
            color: kPrimaryColor2,
            thickness: 1,
            indent: 10,
          ),
        ),
      ],
    );
  }
}
