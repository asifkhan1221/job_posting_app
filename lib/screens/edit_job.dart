import 'package:flutter/material.dart';
import 'package:job_posting_app/utils/button.dart';
import 'package:job_posting_app/utils/textfield.dart';

class EditJob extends StatelessWidget {
  const EditJob({super.key});

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
                  'Edit Job',
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
              placeholder: 'Flutter Developer',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      // width: 360,
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
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis eget in lectus sit amet pellentesque eleifend tellus neque. Praesent sagittis ultricies volutpat turpis hendrerit nulla ultricies massa elementum. Convallis gravida enim erat enim commodo praesent malesuada facilisis. Potenti orci amet, dui nunc aliquet pellentesque sit nibh scelerisque.',
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
