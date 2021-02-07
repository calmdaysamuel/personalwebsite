import 'package:flutter/material.dart';
import 'package:personal_website/DataSet.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:personal_website/Utilities/GenerateMargin.dart';
import 'package:personal_website/Utilities/WebsiteRoute.dart';
import 'package:personal_website/Widgets/Card/CardSquare.dart';
import 'package:personal_website/Widgets/Footer/Footer.dart';
import 'package:personal_website/Widgets/Header/Header.dart';
import 'package:personal_website/Widgets/PageTemplate/PageTemplate.dart';

class ProjectGallery extends StatelessWidget {
  List<String> keyProjects = DataSet.keyProjects;
  List<String> legacyProjects = DataSet.legacyProjects;
  List<Widget> gallery = [];

  ProjectGallery() {
    gallery.add(SizedBox(
      height: 50,
    ));

    generateProject(keyProjects);

    gallery.add(Text(
      "Legacy Projects",
      style: TextStyles.projectSubHeading,
    ));
    gallery.add(SizedBox(
      height: 25,
    ));
    generateProject(legacyProjects);
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
                  onTap: () =>
                      WebsiteRoute.navigateToStaticPage("home", context),
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
                  "PROJECTS",
                  style: TextStyles.cardHeading2,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "This list details a selection of projects I’ve completed as a or the primary developer and have permission to talk about. I’ve worked on a lot of other closed source or otherwise confidential projects that are not listed here.",
                  style: TextStyles.cardBody,
                ),
                ...gallery,
                InkWell(
                  onTap: () => WebsiteRoute.navigateToStaticPage(
                      "experience-gallery", context),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "MY RESUME",
                      style: TextStyles.previousButtonText,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(Icons.arrow_forward_sharp)
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )),
        Footer()
      ],
    );
  }
}
