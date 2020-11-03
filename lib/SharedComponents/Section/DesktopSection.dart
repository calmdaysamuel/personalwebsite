import 'package:flutter/material.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/SharedComponents/BlogThumbnail/BlogThumbnail.dart';

class DesktopSection extends StatelessWidget {
  List<Publication> content;
  bool supportPagination;
  bool showImages;
  bool enableTags;
  String sectionHeader;
  List<Widget> sectionContent;
  DesktopSection({
    this.content = const [],
    this.supportPagination = false,
    this.showImages = true,
    this.enableTags = true,
    this.sectionHeader = "",
  }) {
    renderContentDesktop();
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
