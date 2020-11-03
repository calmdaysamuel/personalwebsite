import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/Services/API.dart';
import 'package:personal_website/SharedComponents/Footer/Footer.dart';
import 'package:personal_website/SharedComponents/Header/Header.dart';
import 'package:personal_website/SharedComponents/Section/Section.dart';
import 'package:personal_website/SharedComponents/WorkSection/WorkSection.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class Error404 extends StatelessWidget {
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
              Text(
                "Hey there, The content you're looking for isn't available.",
                style: TextStyles.titleTextStyle,
              ),
              Text(
                "For the mean time, Take a look at some of my popular articles.",
                style: TextStyles.titleTextStyle,
              ),
              SizedBox(
                height: 60,
              ),
              FutureBuilder<List<Publication>>(
                future: API.getPublicationRecommendation(),
                builder: (context, snapshot) {
                  if (snapshot.hasData == false) {
                    return Container();
                  } else {
                    return Section(
                      content: snapshot.data,
                    );
                  }
                },
              ),
              Footer()
            ],
          ),
        ));
  }
}
