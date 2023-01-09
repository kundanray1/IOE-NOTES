import 'package:book/components/WidthSeperator.dart';
import 'package:book/constants/colors.dart';
import 'package:flutter/material.dart';

Container ResultCard() {
  return Container(
    // width: 250,
    decoration: BoxDecoration(
        border: Border.all(color: tdGrey, width: 1.12),
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextButton(
      style: TextButton.styleFrom(foregroundColor: tdBlack),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                // color: tdBlue,
                border: Border.all(color: tdGrey, width: 1.12),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            height: 161,
            // width: 106,
            child: Image.asset('assets/images/Mask.jpg'),
          ),
          const WidthSeperator(),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text(
                  'The Queen of Nothing',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Holly Black'),
                SizedBox(
                  height: 5,
                ),
                Text('The first of the 7 legendary tales of ma'),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
