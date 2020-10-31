import 'package:flutter/material.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class WorkThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text(
              "3D Icons ->",
              style: TextStyles.workThumbnailTitle,
            ),
            onPressed: (){},
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 432,
            child: Text(
              "Carefully crafted 3D icons designed from scratch that look like they’re popping off your screen. Over 200 icons covering the…",
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
