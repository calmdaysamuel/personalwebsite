import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_website/Services/API.dart';
import 'package:personal_website/SharedComponents/ContentSection/ContentSection.dart';
import 'package:personal_website/SharedComponents/PageTemplate/PageTemplate.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class Error404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      children: [
        Text(
          "Hey there, The content you're looking for isn't available.",
          style: TextStyles.titleTextStyle,
        ),
        Text(
          "For the mean time, Take a look at some of my popular articles.",
          style: TextStyles.titleTextStyle,
        ),
        SizedBox(
          height: 60,
        ),
        ContentSection(
          myFuture: API.getPublicationRecommendation,
          parameters: [1],
          enableImages: true,
        )
      ],
    );
  }
}
