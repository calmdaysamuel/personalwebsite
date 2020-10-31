import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/WorkThumbnail/WorkThumbnail.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class WorkSection extends StatelessWidget {
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Work",
            style: TextStyles.footerHeaderText,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              WorkThumbnail(),
              SizedBox(
                width: 50,
              ),
              WorkThumbnail()
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              WorkThumbnail(),
              SizedBox(
                width: 50,
              ),
              WorkThumbnail()
            ],
          ),
          Row(
            children: [
              WorkThumbnail(),
              SizedBox(
                width: 50,
              ),
              WorkThumbnail()
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              WorkThumbnail(),
              SizedBox(
                width: 50,
              ),
              WorkThumbnail()
            ],
          ),
          Row(
            children: [
              WorkThumbnail(),
              SizedBox(
                width: 50,
              ),
              WorkThumbnail()
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              WorkThumbnail(),
              SizedBox(
                width: 50,
              ),
              WorkThumbnail()
            ],
          ),
        ],
      ),
    );
  }
}
