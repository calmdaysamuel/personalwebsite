import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/Bio/Bio.dart';
import 'package:personal_website/SharedComponents/BlogSection/BlogSection.dart';
import 'package:personal_website/SharedComponents/Footer/Footer.dart';
import 'package:personal_website/SharedComponents/Header/Header.dart';
import 'package:personal_website/SharedComponents/WorkSection/WorkSection.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class HomePage extends StatelessWidget {
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
            Bio(),
            WorkSection(),
            // SizedBox(
            //   height: 150,
            // ),
            // BlogSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
