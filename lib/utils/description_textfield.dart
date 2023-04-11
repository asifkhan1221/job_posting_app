import 'package:flutter/material.dart';

class DescriptionTextField extends StatelessWidget {
  final String? placeholder;
  final Color color;
  final TextEditingController? descriptionController;
  const DescriptionTextField(
      {super.key,
      required this.placeholder,
      required this.color,
      required this.descriptionController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1C24),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFF5D5D67), width: 1)),
      child: TextField(
        controller: descriptionController,
        maxLines: 11,
        style: const TextStyle(fontSize: 15, color: Colors.white),
        decoration: const InputDecoration(
            hintText: "Describe Requirements...",
            hintStyle: TextStyle(
                color: Color(0xFF8F8F9E),
                fontSize: 15.5,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins'),
            border: InputBorder.none),
      ),
    );
  }
}
