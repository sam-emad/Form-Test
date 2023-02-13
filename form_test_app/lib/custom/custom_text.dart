import 'package:flutter/cupertino.dart';

import '../static/static.dart';

class Customtext extends StatelessWidget {
  const Customtext({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lits sign in with Us ~',
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: kPrimaryColor2),
    );
  }
}
