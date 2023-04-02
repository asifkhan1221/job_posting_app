import 'package:flutter/material.dart';
import 'package:job_posting_app/textfield.dart';

import 'Sign_in.dart';
import 'button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 110, left: 27, bottom: 59, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let’s sign you up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 14),
            const Text("Welcome\nJoin the community!",
                style: TextStyle(color: Colors.white, fontSize: 30)),
            const SizedBox(height: 47),
            const AppTextField(placeholder: "Enter your full name"),
            const AppTextField(placeholder: "Enter your email address"),
            const AppTextField(placeholder: "Enter your password"),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Already have an account ? ',
                    style: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            Button(label: "Sign Up", onPress: onSignPress),
          ],
        ),
      ),
    );
  }

  void onSignPress() {}
}
