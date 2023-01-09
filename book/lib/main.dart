import 'dart:ui';

import 'package:book/components/HeaderSeperator.dart';
import 'package:book/components/RecommendedCard.dart';
import 'package:book/components/SectionSeperator.dart';
import 'package:book/components/TrendingRow.dart';
import 'package:book/components/WideCard.dart';
import 'package:book/components/WidthSeperator.dart';
import 'package:book/constants/colors.dart';
import 'package:book/screens/SearchScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Books'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  // padding:
                  //     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: const Text(
                'Trending this week',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              )),
              HeaderSeperator(),
              TrendingRow(
                image: 'assets/images/Mask.png',
              ),
              SectionSeperator(),
              const Text(
                'All Books',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const HeaderSeperator(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WideCard(),
                    WidthSeperator(),
                    WideCard(),
                  ],
                ),
              ),
              SectionSeperator(),
              const Text(
                'Continue Reading',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const HeaderSeperator(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WideCard(),
                    WidthSeperator(),
                    WideCard(),
                  ],
                ),
              ),
              SectionSeperator(),
              const Text(
                'Recommended for you',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const HeaderSeperator(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendedCard(),
                    WidthSeperator(),
                    RecommendedCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return SearchScreen();
          }));
          // Add your onPressed code here!
        },
        backgroundColor: Colors.lightBlue,
        child: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
