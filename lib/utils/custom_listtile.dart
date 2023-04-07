import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/edit_job.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 11),
      padding: const EdgeInsets.only(top: 20, left: 25),
      width: 360,
      height: 102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF201E27),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Flutter developer required',
            style: TextStyle(color: Colors.white),
          ),
          Row(
            children: [
              const Text(
                'karachi pakistan',
                style: TextStyle(color: Colors.grey),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const EditJob()));
                },
                icon: const Icon(Icons.edit),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
