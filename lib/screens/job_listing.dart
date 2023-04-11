import 'package:flutter/material.dart';
import 'package:job_posting_app/model/job_post.dart';
import 'package:job_posting_app/screens/add_job.dart';
import 'package:job_posting_app/screens/edit_job.dart';
import 'package:job_posting_app/utils/search_box.dart';

class JobListing extends StatefulWidget {
  const JobListing({super.key});

  @override
  State<JobListing> createState() => _JobListingState();
}

class _JobListingState extends State<JobListing> {
  TextEditingController searchController = TextEditingController();
  List<JobPost> itemsOnSearch = [];
  List<JobPost> items = [];

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
                .push<JobPost>(MaterialPageRoute(builder: (_) => AddNewJob()))
                .then((value) => setState(() {
                      if (value!.jobTitle.isNotEmpty &&
                          value.jobDescription.isNotEmpty) {
                        items
                            .add(JobPost(value.jobTitle, value.jobDescription));
                      }
                    }));
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
              children: [
                const Text(
                  'Muhammad Asif',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFFFFFFF),
                      decoration: TextDecoration.none),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/logout.png"),
                ),
              ],
            ),
            SearchBox(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: items.isNotEmpty
                  ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(top: 11, bottom: 17),
                      itemCount: updateAccordingToSearch(
                          items.length, itemsOnSearch.length),
                      itemBuilder: item,
                    )
                  : const Center(
                      child: Text(
                        "No job posted yet!",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF8F8F9E),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget item(BuildContext context, int index) => Padding(
        padding: const EdgeInsets.only(top: 11),
        child: Container(
          //padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: const Color(0xFF201E27),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 25),
            child: ListTile(
              title: Text(
                searchController.text.isNotEmpty
                    ? itemsOnSearch[index].jobTitle
                    : items[index].jobTitle,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                searchController.text.isNotEmpty
                    ? itemsOnSearch[index].jobDescription
                    : items[index].jobDescription,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF8F8F9E),
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins',
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push<JobPost>(MaterialPageRoute(
                              builder: (_) => EditJob(
                                    posname: items[index].jobTitle,
                                    requirement: items[index].jobDescription,
                                  )))
                          .then((value) => setState(() {
                                if (value?.jobTitle != "" &&
                                    value?.jobDescription != "") {
                                  items[index].jobTitle = value!.jobTitle;
                                  items[index].jobDescription =
                                      value.jobDescription;
                                }
                              }));
                    },
                    icon: Image.asset("images/edit.png"),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                    icon: Image.asset("images/delete.png"),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  void onSearch(String search) {
    setState(() {
      itemsOnSearch = items
          .where((element) =>
              element.jobTitle.toLowerCase().contains(search) ||
              element.jobDescription.toLowerCase().contains(search))
          .toList();
    });
  }

  updateAccordingToSearch(int item, int searchItem) {
    int value;
    if (searchController.text.isNotEmpty) {
      value = searchItem;
    } else {
      value = item;
    }
    return value;
  }
}
