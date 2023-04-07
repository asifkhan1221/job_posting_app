import 'package:flutter/material.dart';
import 'package:job_posting_app/utils/button.dart';
import 'package:job_posting_app/utils/textfield.dart';

class AddNewJob extends StatelessWidget {
  const AddNewJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Container(
        padding: const EdgeInsets.only(
          top: 89,
          left: 27,
          right: 27,
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
                Padding(padding: EdgeInsets.only(left: 31)),
                Text(
                  'Add New Job',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const AppTextField(
              placeholder: 'Enter position name',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 360,
                      height: 374,
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0XFF1E1C24),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color(0xFF5D5D67),
                          width: 1,
                        ),
                      ),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Describe Requirement...',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff8F8F9E),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button(
                      label: 'Submit Job',
                      onPress: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
