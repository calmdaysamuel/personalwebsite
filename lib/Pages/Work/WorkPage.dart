import 'package:flutter/material.dart';
import 'package:personal_website/Services/API.dart';
import 'package:personal_website/SharedComponents/ContentSection/ContentSection.dart';
import 'package:personal_website/SharedComponents/PageTemplate/PageTemplate.dart';

class WorkPage extends StatelessWidget {
  static const route = "/work";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      children: [
        ContentSection(
          myFuture: API.getPublicationRecommendation,
          parameters: [1],
        )
      ],
    );
  }
}
