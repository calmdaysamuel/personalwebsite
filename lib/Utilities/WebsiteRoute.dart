import 'package:flutter/material.dart';
import 'package:personal_website/DataSet.dart';
import 'package:personal_website/Widgets/Pages/Error404.dart';
import 'package:personal_website/Widgets/Pages/HomePage.dart';
import 'package:personal_website/Widgets/Pages/ProjectGallery.dart';
import 'package:personal_website/Widgets/Pages/ProjectPageTemplate.dart';
import 'package:personal_website/Widgets/Pages/ResumePage.dart';

class WebsiteRoute {
  static void navigateToStaticPage(String page, BuildContext context) {
    if (page == "home") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage()));
    } else if (page == "project-gallery") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ProjectGallery()));
    } else if (page == "experience-gallery") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ResumePage()));
    }
  }

  static void navigateToProject(String page, BuildContext context) {
    if (["chernobyl++", "personal-website"].contains(page)) {
      WebsiteRoute.navigateToStaticPage("project-gallery", context);
      return;
    }
    if (["home", "project-gallery", "experience-gallery"].contains(page)) {
      WebsiteRoute.navigateToStaticPage(page, context);
      return;
    }
    if (!DataSet.projectData.containsKey(page)) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Error404()));
    }
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProjectPageTemplate(
              data: DataSet.projectData[page],
            )));
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final regExPattern = RegExp(r"\/project-gallery\/.+");
    var section = settings.name.split("/");

    if (section.contains("project-gallery")) {
      return MaterialPageRoute<void>(
        builder: (context) => ProjectPageTemplate(
          data: DataSet.projectData[section[section.length - 1]],
        ),
        settings: settings,
      );
    }

    return null;
  }
}
