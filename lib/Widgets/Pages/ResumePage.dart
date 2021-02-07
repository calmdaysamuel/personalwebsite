import 'package:flutter/material.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:personal_website/Utilities/GenerateMargin.dart';
import 'package:personal_website/Utilities/WebsiteRoute.dart';
import 'package:personal_website/Widgets/Card/CardSquare.dart';
import 'package:personal_website/Widgets/Footer/Footer.dart';
import 'package:personal_website/Widgets/Header/Header.dart';
import 'package:personal_website/Widgets/PageTemplate/PageTemplate.dart';

import '../../DataSet.dart';

class ResumePage extends StatelessWidget {
  List<Widget> gallery = [];

  ResumePage() {
    gallery.add(SizedBox(
      height: 50,
    ));

    generateHeading("EDUCATION");
    generateProject(DataSet.education);
    generateHeading("SKILLS");
    generateProject(DataSet.skills);
    generateHeading("WORK EXPERIENCE");
    generateProject(DataSet.internships);
    generateHeading("ACTIVITIES");
    generateProject(DataSet.activities);
    generateHeading("AWARDS");
    generateProject(DataSet.awards);
    generateHeading("PROJECTS");
    generateProject(DataSet.keyProjects);
    generateProject(DataSet.legacyProjects);
  }

  void generateHeading(String heading) {
    gallery.add(Text(
      heading,
      style: TextStyles.projectSubHeading,
    ));
    gallery.add(SizedBox(
      height: 25,
    ));
  }

  void generateProject(List<String> list) {
    for (var item in list) {
      gallery.add(CardSquare.cardBody(
        card: DataSet.projectData[item].cardModel,
      ));

      gallery.add(SizedBox(
        height: 35,
      ));
    }
  }

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
                height: 50,
              ),
              InkWell(
                onTap: () => WebsiteRoute.navigateToStaticPage("home", context),
                child: Row(children: [
                  Icon(Icons.arrow_back_outlined),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "HOME",
                    style: TextStyles.previousButtonText,
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "MY RESUME",
                style: TextStyles.cardHeading2,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "This is my resume",
                style: TextStyles.cardBody,
              ),
              ...gallery,
              InkWell(
                onTap: () => WebsiteRoute.navigateToStaticPage(
                    "project-gallery", context),
                child: Row(children: [
                  Icon(Icons.arrow_back_outlined),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "PROJECTS",
                    style: TextStyles.previousButtonText,
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        Footer()
      ],
    );
  }
}
