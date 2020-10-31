import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/Footer/Footer.dart';
import 'package:personal_website/SharedComponents/Header/Header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(48, 0, 48, 0),
        child: ListView(
          children: [
            Header(),
            Footer()
          ],
        ),
      ),
    );
  }
}
