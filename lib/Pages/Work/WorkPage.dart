import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/Footer/Footer.dart';
import 'package:personal_website/SharedComponents/Header/Header.dart';

class WorkPage extends StatelessWidget {
  static const route = "/work";
  @override
  Widget build(BuildContext context) {
    var margin = MediaQuery.of(context).size.width - 1762.14 + 352 + 60 + 100;
    if (margin < 0) {
      margin = 60;
    }
    return Scaffold(
      backgroundColor: Color(0xff0b0c0d),
      body: Container(
        margin: EdgeInsets.fromLTRB(margin / 2, 0, margin / 2, 0),
        child: ListView(
          children: [
            Header(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
