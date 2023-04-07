import 'package:flutter/material.dart';

class DescriptionTextField extends StatelessWidget {
  final String? placeholder;
  final Color color;
  const DescriptionTextField(
      {super.key, required this.placeholder, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintMaxLines: 10,
          border: InputBorder.none,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 15,
            color: color,
          ),
        ),
      ),
    );
  }
}
