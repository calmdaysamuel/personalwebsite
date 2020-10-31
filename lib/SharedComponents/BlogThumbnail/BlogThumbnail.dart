import 'package:flutter/material.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class BlogThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 432,
            height: 257,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/1567147079-440035-headshot-2jpg.jpeg"), fit: BoxFit.cover)
            ),
          ),
          TextButton(child: Text("3D Icons ->",style: TextStyles.titleTextStyle,),),
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
