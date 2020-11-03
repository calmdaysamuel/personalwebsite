import 'package:flutter/material.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/SharedComponents/BlogThumbnail/BlogThumbnail.dart';

class MobileSection extends StatelessWidget {
  List<Publication> content;
  bool supportPagination;
  bool enableImage;
  bool enableTags;
  String sectionHeader;
  List<Widget> sectionContent;

  MobileSection({
    this.content = const [],
    this.supportPagination = false,
    this.enableImage = false,
    this.enableTags = false,
    this.sectionHeader = "",
  }) {
    renderContentMobile();
  }

  void renderContentMobile() {
    List<Widget> content = [];

    for (var item in this.content) {
      content.addAll([
        BlogThumbnail(
          title: item.title,
          description: item.description,
          imageUrl: item.pubImageUrl,
          enableImage: this.enableImage,
          enableTag: this.enableTags,
        ),
        SizedBox(
          height: 40,
        )
      ]);
    }
    this.sectionContent = content;
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(this.sectionHeader),
          ...this.sectionContent,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text("Newer posts"),
              ),
              TextButton(
                child: Text("Older posts"),
              )
            ],
          )
        ],
      ),
    );
  }
}
