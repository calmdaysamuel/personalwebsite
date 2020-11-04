import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/WorkThumbnail/WorkThumbnail.dart';

class BlogThumbnail extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final tags;
  final enableImage;
  final enableTag;

  BlogThumbnail(
      {this.title = "",
      this.description = "",
      this.imageUrl = "",
      this.tags = const [],
      this.enableImage = false,
      this.enableTag = false});

  @override
  Widget build(BuildContext context) {
    print(this.enableImage);
    return Container(
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          this.enableImage == true && this.imageUrl != ""
              ? InkWell(
                  onTap: () {},
                  child: Container(
                    child: Image.network(this.imageUrl),
                  ))
              : Container(),
          WorkThumbnail(
            title: this.title,
            description: this.description,
          ),
        ],
      ),
    );
  }
}
