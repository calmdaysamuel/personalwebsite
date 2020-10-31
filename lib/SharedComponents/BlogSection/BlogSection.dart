import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/BlogThumbnail/BlogThumbnail.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class BlogSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var margin = MediaQuery.of(context).size.width - 1762.14 + 352 + 60 + 100;
    if(margin < 0){
      margin = 12;
    }
    return Container(
      margin: EdgeInsets.fromLTRB(margin/2, 0, margin/2, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            "BLOG",
            style: TextStyles.footerHeaderText,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              BlogThumbnail(),
              SizedBox(
                width: 50,
              ),
              BlogThumbnail()
            ],
          ),
          SizedBox(
            height: 35,
          ),
          TextButton(child: Text("Sell all blog posts ->",style: TextStyles.ssText,),  onPressed: () {  },)
        ],
      ),
    );
  }
}
