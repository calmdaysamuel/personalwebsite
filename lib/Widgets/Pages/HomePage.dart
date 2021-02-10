import 'package:flutter/material.dart';
import 'package:personal_website/DataModels/CardModel.dart';
import 'package:personal_website/DataSet.dart';
import 'package:personal_website/Styles/Colors.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:personal_website/Utilities/GenerateMargin.dart';
import 'package:personal_website/Widgets/Card/CardSquare.dart';
import 'package:personal_website/Widgets/Footer/Footer.dart';
import 'package:personal_website/Widgets/Header/DesktopHeader.dart';
import 'package:personal_website/Widgets/Header/Header.dart';
import 'package:personal_website/Widgets/PageTemplate/PageTemplate.dart';
import 'package:personal_website/Widgets/Section/Section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var margin = GenerateMargin(context) / 2;
    return PageTemplate(
      children: [
        Header(),
        Container(
          margin: EdgeInsets.fromLTRB(margin, 0, margin, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Text(
                "WORK EXPERIENCE",
                style: TextStyles.categoryHeadingText,
              ),
              SizedBox(
                height: 35,
              ),
              Section(
                cards: [
                  DataSet.projectData["intuit"].cardModel,
                  DataSet.projectData["autodesk"].cardModel,
                  CardModel(
                    title: "My Work Experience",
                    body:
                        "This is a collection of my of all my work experience including past projects, education, awards and internships.",
                    goTo: "experience-gallery",
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 300,
          padding: EdgeInsets.fromLTRB(margin + 25, 0, margin + 25, 0),
          color: ColorStyle.primaryBlack,
          child: Center(
            child: Text(
              "Experienced software and site reliability engineer with a focus on infrastructure automation, low level networking, and open source web application stacks.",
              style: TextStyles.bannerBodyText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(margin, 0, margin, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Text(
                "PROJECTS",
                style: TextStyles.categoryHeadingText,
              ),
              SizedBox(
                height: 35,
              ),
              Section(
                cards: [
                  DataSet.projectData["chernobyl++"].cardModel,
                  DataSet.projectData["chernobyl++"].cardModel,
                  CardModel(
                    title: "All Projects",
                    body: "A collections of projects I've worked on where I was the primary developer.",
                    goTo: "project-gallery",
                  )

                ],
              )
            ],
          ),
        ),
        Footer()
      ],
    );
  }
}
