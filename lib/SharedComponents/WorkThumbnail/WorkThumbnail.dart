import 'package:flutter/material.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class WorkThumbnail extends StatelessWidget {
  final String title;
  final String description;
  final String goTo;

  WorkThumbnail({this.title = "a", this.description = "a", this.goTo = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text(
              this.title + " ->",
              style: TextStyles.workThumbnailTitle,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/article/${this.title}");
            },
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              this.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.footerBodyText2,
            ),
          )
        ],
      ),
    );
  }
}
