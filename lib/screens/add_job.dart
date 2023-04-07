import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/job_listing.dart';
import 'package:job_posting_app/utils/button.dart';
import 'package:job_posting_app/utils/description_textfield.dart';
import 'package:job_posting_app/utils/textfield.dart';

class AddNewJob extends StatelessWidget {
  const AddNewJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 89,
          left: 27,
          right: 27,
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const JobListing()));
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 31)),
                const Text(
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
                    const DescriptionTextField(
                      placeholder: 'Describe Requirement...',
                      color: Colors.grey,
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
