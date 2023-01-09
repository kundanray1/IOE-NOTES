import 'package:book/components/HeaderSeperator.dart';
import 'package:book/components/SearchResults.dart';
import 'package:book/components/SectionSeperator.dart';
import 'package:book/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSeperator(),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Search For Books'),
              ),
            ),
            HeaderSeperator(),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  border: Border(
                      // bottom: BorderSide(width: 1.0, color: tdGrey),
                      ),
                ),
                child: const Text(
                  'Search Results',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SearchResults()
          ],
        ),
      ),
    );
  }
}
