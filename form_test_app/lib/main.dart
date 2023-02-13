import 'package:flutter/material.dart';
import 'package:form_test_app/pages/home_page.dart';


void main() {
  runApp(const FormTest());
}

class FormTest extends StatelessWidget {
  const FormTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



