import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
    TextEditingController searchController = TextEditingController();

    SearchBox({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.only(
                  top: 7,
                  bottom: 8,
                  //left: 55
                ),
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: const Color(0xFF5D5D67), width: 1)),
                child: TextField(
                //  onChanged: ,
                  controller: searchController,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Color(0xFF5D5D67)),
                      hintText: "Search keywords",
                      hintStyle: TextStyle(
                        color: Color(0xFF8F8F9E),
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins',
                      ),
                      border: InputBorder.none),
                ),
              );
  }
  

}

