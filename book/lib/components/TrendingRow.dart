import 'dart:ffi';

import 'package:flutter/material.dart';

class TrendingRow extends StatelessWidget {
  TrendingRow({Key? key, required this.image}) : super(key: key);
  final image;
  var a = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController(
      initialScrollOffset: 0.0,
      keepScrollOffset: true,
    );
    return SingleChildScrollView(
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      // padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var a in a)
            Container(
              height: 244,
              width: 160,
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.asset(image),
            ),

          // Container(
          //     height: 244,
          //     width: 160,
          //     decoration: BoxDecoration(
          //         color: Colors.blueAccent,
          //         borderRadius: BorderRadius.all(Radius.circular(10)))),
          // SizedBox(
          //   width: 10,
          // ),
          // Container(
          // height: 244,
          // width: 160,
          // decoration: BoxDecoration(
          //     color: Colors.blueAccent,
          //     borderRadius: BorderRadius.all(Radius.circular(10)))),
        ],
      ),
    );
  }
}
