import 'package:book/components/HeaderSeperator.dart';
import 'package:book/components/RecommendedCard.dart';
import 'package:book/components/ResultCard.dart';
import 'package:book/components/SectionSeperator.dart';
import 'package:book/components/WidthSeperator.dart';
import 'package:book/constants/colors.dart';
import 'package:flutter/material.dart';

Container SearchResults() {
  return Container(
    child: Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            ResultCard(),
            HeaderSeperator(),
            ResultCard(),
            HeaderSeperator(),

            ResultCard(),
            HeaderSeperator(),

            // ResultCard(),
            ResultCard(),
          ],
        ),
      ),
    ),
  );
}
