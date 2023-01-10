import 'package:book/components/WidthSeperator.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.title, this.selected});
  final title;
  final selected;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Container EditSelector() {
  const title = 'Field Selected';
  var result = 'BCT';
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
        color: Colors.blue.shade200, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu_book_outlined),
        const Text(title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        const WidthSeperator(),
        Text(
          result,
          style: TextStyle(
              color: Colors.grey.shade700, fontWeight: FontWeight.w700),
        ),
        Icon(
          Icons.arrow_right,
          color: Colors.grey.shade700,
        )
      ],
    ),
  );
}
