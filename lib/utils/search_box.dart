import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 56,
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
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(9),
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          hintText: 'Search keyword',
          hintStyle: TextStyle(
            fontSize: 15,
            color: Color(0xFF8F8F9E),
          ),
        ),
      ),
    );
  }
}
