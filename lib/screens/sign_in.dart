import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/job_listing.dart';
import 'package:job_posting_app/screens/signup.dart';

import '../utils/button.dart';
import '../utils/textfield.dart';

class SignIn extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 79, left: 27, right: 27, bottom: 59),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's sign in",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            const Text("Welcome\nJoin the community!",
                style: TextStyle(color: Colors.white, fontSize: 30)),
            const SizedBox(height: 47),
            AppTextField(
              placeholder: "Enter your email address",
              titleTextController: emailController,
            ),
            AppTextField(
              placeholder: "Enter your password",
              titleTextController: passwordController,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account ? ",
                    style: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                  ),
                  Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            Button(
              label: "Sign In",
              onPress: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const JobListing()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
