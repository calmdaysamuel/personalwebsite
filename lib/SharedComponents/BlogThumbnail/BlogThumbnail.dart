import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/WorkThumbnail/WorkThumbnail.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class BlogThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 432,
              height: 257,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/1567147079-440035-headshot-2jpg.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ),
          WorkThumbnail()
        ],
      ),
    );
  }
}
