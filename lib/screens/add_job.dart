import 'package:flutter/material.dart';
import 'package:job_posting_app/model/job_post.dart';
import 'package:job_posting_app/utils/button.dart';
import 'package:job_posting_app/utils/description_textfield.dart';
import 'package:job_posting_app/utils/textfield.dart';

class AddNewJob extends StatelessWidget {
  TextEditingController titleTextController = TextEditingController();
  TextEditingController descriptionTextController = TextEditingController();
  AddNewJob({super.key});

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
        child: ListView(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 31)),
                const Text(
                  'Add Job',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            AppTextField(
              placeholder: 'Flutter Developer',
              titleTextController: titleTextController,
            ),
            DescriptionTextField(
              placeholder: "Description requirement.......",
              color: Colors.white,
              descriptionController: descriptionTextController,
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              label: 'Add Job',
              onPress: () => onSave(context),
            ),
          ],
        ),
      ),
    );
  }

  void onSave(BuildContext context) {
    var data =
        JobPost(titleTextController.text, descriptionTextController.text);
    Navigator.pop(context, data);
  }
}
