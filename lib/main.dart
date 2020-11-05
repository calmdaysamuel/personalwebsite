import 'package:flutter/material.dart';
import 'package:personal_website/Pages/Blog/BlogPage.dart';
import 'package:personal_website/Pages/Error404/Error404.dart';
import 'package:personal_website/Pages/HireMe/HireMe.dart';
import 'package:personal_website/Pages/Home/HomePage.dart';
import 'package:personal_website/Pages/Work/WorkPage.dart';

import 'Pages/Article/Article.dart';

void main() {
  runApp(MyWebsite());
}

class MyWebsite extends StatelessWidget {
  bool hasBegin(String str1, String str2) {
    int pointer = 0;
    while (str1.length > pointer && str2.length > pointer) {
      if (str1[pointer] != str2[pointer]) {
        return false;
      }

      pointer += 1;
    }
    return true;
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (hasBegin(settings.name, "/article/")) {
      var temp = settings.name.split("/").last.replaceAll("%20", " ");
      if(temp == ""){
        return MaterialPageRoute<void>(
          builder: (context) => BlogPage(),
            settings: settings
        );
      }
      return MaterialPageRoute<void>(
        builder: (context) => Article(
          page: temp,
        ),
        settings: settings,
      );
    } else if (hasBegin(settings.name, "/blog/category/")) {
      return MaterialPageRoute<void>(
        builder: (context) => BlogPage(
          category: settings.name.substring(16).replaceAll("%20", " "),
        ),
        settings: settings,
      );
    } else if (hasBegin(settings.name, "/blog/tag/")) {
      return MaterialPageRoute<void>(
        builder: (context) => BlogPage(
          tag: settings.name.substring(11).replaceAll("%20", " "),
        ),
        settings: settings,
      );
    }
    return MaterialPageRoute<void>(
      builder: (context) => Error404(),
      settings: settings,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
      onUnknownRoute: (settings) => MaterialPageRoute<void>(
          builder: (context) => Error404(), settings: settings),
      routes: {
        "/article": (context) => BlogPage(),
        HireMe.route: (context) => HireMe(),
        BlogPage.route: (context) => BlogPage(),
        WorkPage.route: (context) => WorkPage()
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
