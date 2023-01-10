import 'package:book/components/CustomIconButton.dart';
import 'package:book/components/EditSelector.dart';
import 'package:book/components/HeaderSeperator.dart';
import 'package:book/components/SearchResults.dart';
import 'package:book/components/SectionSeperator.dart';
import 'package:book/components/SuperText.dart';
import 'package:book/components/WidthSeperator.dart';
import 'package:book/constants/Fonts.dart';
import 'package:book/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  Map<String, dynamic> Fontwt = {
    'SuperBold': FontWeight.bold,
    'Bold': FontWeight.w500,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.blue.shade500],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            padding: EdgeInsets.only(top: 60),
            // decoration: BoxDecoration(color: Colors.lightBlue.shade100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SuperText(title: '08'),
                      SuperText(title: 'June'),
                      SectionSeperator(),
                      SuperText(title: 'Kundan Ray'),
                      SuperText(title: 'Course-BCT'),
                      const SectionSeperator(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.blue,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                          ),
                          SuperText(title: 'Surakarta,INA')
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/Profile.png',
                  height: 300,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  EditSelector(
                    title: 'Field',
                    selected: 'Engineering',
                  ),
                  EditSelector(
                    title: 'Course',
                    selected: 'BCT',
                  ),
                  EditSelector(
                    title: 'Semester',
                    selected: 'III',
                  )
                ]),
          ),
          SectionHeader(title: ''),
          CustomIconButton(),
        ],
      ),
    );
  }
}
