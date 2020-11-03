import 'package:flutter/cupertino.dart';
import 'package:personal_website/Pages/Article/Article.dart';
import 'package:personal_website/Pages/Blog/BlogPage.dart';

List<Path> paths = [
  Path(
      pattern: r'^(\/article\/).+',
      builder: (context, match) => Article(match)),
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
