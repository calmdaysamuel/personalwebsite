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
  bool showImages;
  bool enableTags;
  String sectionHeader;
  List<Widget> sectionContent;
  Section({
    this.content = const [],
    this.supportPagination = false,
    this.showImages = true,
    this.enableTags = true,
    this.sectionHeader = "",
  }) {
    renderContentMobile();
  }

  void renderContentDesktop() {
    List<Widget> content = [];
    List<Widget> temp = [];
    for (var item in this.content) {
      temp.add(BlogThumbnail(
          title: item.title,
          description: item.description,
          imageUrl: item.pubImageUrl,
          enableImage: this.showImages,
          enableTag: this.enableTags));
      if (temp.length == 2) {
        temp.insert(
            1,
            SizedBox(
              width: 50,
            ));
        content.addAll([
          Row(
            children: temp,
          ),
          SizedBox(
            height: 40,
          )
        ]);
        temp = [];
      }
    }
    this.sectionContent = content;
  }

  void renderContentMobile() {
    List<Widget> content = [];

    for (var item in this.content) {
      content.addAll([
        BlogThumbnail(
          title: item.title,
          description: item.description,
          imageUrl: item.pubImageUrl,
          enableImage: this.showImages,
          enableTag: this.enableTags,
        ),
        SizedBox(
          height: 40,
        )
      ]);
    }
    this.sectionContent = content;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBaseWidget(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile) {
          return MobileSection(
            content: content,
          );
        }
        return DesktopSection(
          content: content,
        );
      },
    );
  }
}
