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
  List<Path> paths = [
    Path(
        pattern: r'^(\/article\/).+',
        builder: (context, match) => Article(page: match)),
    Path(
        pattern: r'^(\/blog){1}(\/category\/){1}.+',
        builder: (context, match) => BlogPage(
              category: match,
            )),
    Path(
        pattern: r'^(\/blog){1}(\/tag\/){1}.+',
        builder: (context, match) => BlogPage(
              tag: match,
            )),
  ];

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
    print(settings.name);
    if (hasBegin(settings.name, "/article/")) {
      var temp = settings.name.split("/").last.replaceAll("%20", " ");
      print(temp);
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
        HireMe.route: (context) => HireMe(),
        BlogPage.route: (context) => BlogPage(),
        WorkPage.route: (context) => WorkPage()
      },
      debugShowCheckedModeBanner: false,
      home: Article(
        page: "Thecalmday.com",
      ),
    );
  }
}

class Path {
  final String pattern;
  final Widget Function(BuildContext, String) builder;
  Path({this.pattern, this.builder});
}
