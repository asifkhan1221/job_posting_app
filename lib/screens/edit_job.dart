import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/job_listing.dart';
import 'package:job_posting_app/utils/button.dart';
import 'package:job_posting_app/utils/description_textfield.dart';
import 'package:job_posting_app/utils/textfield.dart';

class EditJob extends StatelessWidget {
  const EditJob({super.key});

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
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const JobListing()));
          },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 31)),
                const Text(
                  'Edit Job',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 11,
                    ),
                    const AppTextField(
                      placeholder: 'Flutter Developer',
                    ),
                    const DescriptionTextField(
                      placeholder: "Lorem ipsum dolor sit amet,"
                          "consectetur adipiscing elit. Quis eget in"
                          "lectus sit amet pellentesque eleifend"
                          "tellus neque. Praesent sagittis ultricies"
                          "volutpat turpis hendrerit nulla ultricies"
                          "massa elementum. Convallis gravida"
                          "enim erat enim commodo praesent malesuada",
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button(
                      label: 'Update Job',
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
