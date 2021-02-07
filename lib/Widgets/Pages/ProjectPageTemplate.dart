import 'package:flutter/material.dart';
import 'package:personal_website/DataModels/Category.dart';
import 'package:personal_website/DataModels/ProjectModel.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:personal_website/Utilities/GenerateMargin.dart';
import 'package:personal_website/Utilities/WebsiteRoute.dart';
import 'package:personal_website/Widgets/Footer/Footer.dart';
import 'package:personal_website/Widgets/Header/Header.dart';
import 'package:personal_website/Widgets/PageTemplate/PageTemplate.dart';

class ProjectPageTemplate extends StatelessWidget {
  final ProjectModel data;
  List<Widget> article;

  ProjectPageTemplate({this.data}) {
    article = [
      Text(
        this.data.cardModel.title,
        style: TextStyles.cardHeading2,
      ),
      SizedBox(
        height: 30,
      ),
    ];
    this.generateArticle();
  }

  void generateArticle() {
    for (Category item in this.data.articleModel.content) {
      if (item.type == "heading") {
        this.article.add(Text(
              "${item.content}",
              style: TextStyles.projectSubHeading,
            ));
      } else if (item.type == "paragraph") {
        this.article.add(Text(
              "${item.content}",
              style: TextStyles.projectBodyText,
            ));
      } else if (item.type == "image") {
        this.article.add(Image.network(item.content));
      }

      this.article.add(SizedBox(
            height: 25,
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
              ...article
            ],
          ),
        ),
        Footer()
      ],
    );
  }
}
