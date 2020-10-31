import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/BlogSection/BlogSection.dart';
import 'package:personal_website/SharedComponents/Footer/Footer.dart';
import 'package:personal_website/SharedComponents/Header/Header.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff0b0c0d),
      body: Container(
        //margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: ListView(
          children: [
            Header(),
            BlogSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
