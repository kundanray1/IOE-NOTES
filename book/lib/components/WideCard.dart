import 'package:book/components/WidthSeperator.dart';
import 'package:book/constants/colors.dart';
import 'package:flutter/material.dart';

Container WideCard() {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: tdGrey, width: 1.12),
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: tdBlack,
              border: Border.all(color: tdGrey, width: 1.12),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          height: 81,
          width: 53,
          child: Image.asset('assets/images/Book.png'),
        ),
        const WidthSeperator(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: const [
            Text(
              'The Queen of Nothing',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Holly Black'),
          ],
        )
      ],
    ),
  );
}
