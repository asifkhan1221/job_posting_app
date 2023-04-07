import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/add_job.dart';
import 'package:job_posting_app/utils/custom_list_tile.dart';
import 'package:job_posting_app/utils/search_box.dart';

class JobListing extends StatelessWidget {
  const JobListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 74,
        height: 74,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const AddNewJob()));
          },
          child: const Icon(
            Icons.add,
            size: 30,
            color: Color(0xFF191720),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF191720),
      body: Container(
        padding: const EdgeInsets.only(top: 79, left: 27, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFFFFFFF),
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: const [
                Text(
                  'Muhammad Asif',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFFFFFFF),
                      decoration: TextDecoration.none),
                ),
                Spacer(),
                Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ],
            ),
            const SearchBox(),
            const SizedBox(
              height: 26,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                  ],
                ),
              ),
            ),
            // FloatingActionButton(
            //   onPressed: () {},
            //   child: const Icon(Icons.add),
            // )
          ],
        ),
      ),
    );
  }
}
