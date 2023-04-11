import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/job_listing.dart';
import 'package:job_posting_app/screens/sign_in.dart';

import '../utils/button.dart';
import '../utils/textfield.dart';

class SignUp extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
   SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            AppTextField(placeholder: "Enter your full name", titleTextController: nameController,),
            AppTextField(placeholder: "Enter your email address", titleTextController: emailController,),
            AppTextField(placeholder: "Enter your password", titleTextController: passwordController,),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  SignIn()));
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
            Button(
              label: "Sign Up",
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
