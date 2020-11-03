import 'package:flutter/material.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/SharedComponents/BlogThumbnail/BlogThumbnail.dart';
import 'package:personal_website/SharedComponents/Section/DesktopSection.dart';
import 'package:personal_website/SharedComponents/Section/MobileSection.dart';
import 'package:personal_website/enums/DeviceScreenType.dart';
import 'package:personal_website/enums/ResponsiveBaseWidget.dart';

class Section extends StatelessWidget {
  List<Publication> content;
  bool supportPagination;
  bool enableImage;
  bool enableTags;
  String sectionHeader;
  List<Widget> sectionContent;

  Section({
    this.content = const [],
    this.supportPagination = false,
    this.enableImage = true,
    this.enableTags = true,
    this.sectionHeader = "",
  });



  @override
  Widget build(BuildContext context) {
    return ResponsiveBaseWidget(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile) {
          return MobileSection(
            content: content,
            enableImage: this.enableImage,
          );
        }
        return DesktopSection(
          content: content,
          enableImage: this.enableImage,
        );
      },
    );
  }
}
