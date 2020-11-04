import 'package:flutter/material.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/enums/DeviceScreenType.dart';
import 'package:personal_website/enums/ResponsiveBaseWidget.dart';

import 'ArticleContentDesktop.dart';
import 'ArticleContentMobile.dart';

class ArticleContent extends StatelessWidget {
  final Publication publication;

  ArticleContent({this.publication});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBaseWidget(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile) {
          return ArticleContentMobile(publication: this.publication);
        }
        return ArticleContentDesktop(
          publication: this.publication,
        );
      },
    );
  }
}
