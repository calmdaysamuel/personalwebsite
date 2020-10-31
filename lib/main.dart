import 'package:flutter/material.dart';
import 'package:personal_website/Pages/Blog/BlogPage.dart';
import 'package:personal_website/Pages/HireMe/HireMe.dart';
import 'package:personal_website/Pages/Home/HomePage.dart';
import 'package:personal_website/Pages/Work/WorkPage.dart';

void main() {
  runApp(MyWebsite());
}

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/hire-me": (context) => HireMe(),
        "/blog": (context) => BlogPage(),
        "/work": (context) => WorkPage()
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
