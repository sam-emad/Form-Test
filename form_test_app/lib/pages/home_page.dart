import 'package:flutter/material.dart';
import '../custom/custom_button.dart';
import '../custom/custom_divider.dart';
import '../custom/custom_login_text.dart';
import '../custom/custom_text.dart';
import '../custom/custom_text_field.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? userName, email, passwerd;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: ListView(
            children: [
              Image.asset('images/logo2.png', height: 250),
              const SizedBox(height: 60),
              const Customtext(),
              const SizedBox(height: 25),
              CustomTextField(
                  onSaved: (data) => userName = data!,
                  hintText: 'User Name',
                  suffixIcon: const Icon(Icons.person)),
              const SizedBox(height: 16),
              CustomTextField(
                  onSaved: (data) => email = data!,
                  hintText: 'New gmail',
                  suffixIcon: const Icon(Icons.email_rounded)),
              const SizedBox(height: 16),
              CustomTextField(
                  onSaved: (data) => passwerd = data!,
                  hintText: 'New passwerd',
                  suffixIcon: const Icon(Icons.lock)),
              const SizedBox(height: 65),
              CustomButton(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 30),
              const CustomDivider(),
              const SizedBox(height: 10),
              const CustomloginText(),
            ],
          ),
        ),
      ),
    );
  }
}

