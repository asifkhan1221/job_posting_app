import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String? placeholder;

  const AppTextField({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0XFF1E1C24),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xFF5D5D67),
            width: 1,
          )

          //
          ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: placeholder,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
