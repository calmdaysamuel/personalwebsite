import 'package:flutter/material.dart';
import 'package:personal_website/Services/API.dart';
import 'package:personal_website/SharedComponents/Bio/Bio.dart';
import 'package:personal_website/SharedComponents/ContentSection/ContentSection.dart';
import 'package:personal_website/SharedComponents/PageTemplate/PageTemplate.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      children: [
        Bio(),
        ContentSection(myFuture: API.getWorkPublication),
        ContentSection(
          myFuture: API.getPublicationRecommendation,
          parameters: [1],
          enableImages: true,
        ),
      ],
    );
  }
}
