import 'package:flutter/material.dart';
import 'package:job_posting_app/model/job_post.dart';
import 'package:job_posting_app/utils/button.dart';
import 'package:job_posting_app/utils/description_textfield.dart';
import 'package:job_posting_app/utils/textfield.dart';

class EditJob extends StatefulWidget {
  String posname = "";
  String requirement = "";
  EditJob({super.key, required this.posname, required this.requirement});

  @override
  State<EditJob> createState() => _EditJobState(posname, requirement);
}

class _EditJobState extends State<EditJob> {
  String posname;
  String requirement;

  _EditJobState(this.posname, this.requirement);

  @override
  Widget build(BuildContext context) {
    TextEditingController position = TextEditingController()..text = posname;
    TextEditingController description = TextEditingController()
      ..text = requirement;

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
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => Dashboard()));
                  },
                  icon: const Icon(Icons.arrow_back_ios_rounded,
                      color: Colors.white, size: 25),
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
                    AppTextField(
                      placeholder: 'Flutter Developer',
                      titleTextController: position,
                    ),
                    DescriptionTextField(
                      placeholder: "Lorem ipsum dolor sit amet,"
                          "consectetur adipiscing elit. Quis eget in"
                          "lectus sit amet pellentesque eleifend"
                          "tellus neque. Praesent sagittis ultricies"
                          "volutpat turpis hendrerit nulla ultricies"
                          "massa elementum. Convallis gravida"
                          "enim erat enim commodo praesent malesuada",
                      color: Colors.white,
                      descriptionController: description,
                      // descriptionController: null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button(
                        label: 'Update Job',
                        onPress: () {
                          var data = JobPost(position.text, description.text);
                          Navigator.pop(context, data);
                        }),
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
