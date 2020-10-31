import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var margin = MediaQuery.of(context).size.width - 1762.14 + 352 + 60 + 100;
    if(margin < 0){
      margin = 12;
    }
    return Container(
      margin: EdgeInsets.fromLTRB(margin/2, 0, margin/2, 0),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu, color: Colors.white,),
              ),
              Text(
                "CALMDAY",
                style: TextStyles.titleTextStyle,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextButton(
                    child: Text(
                      "Work",
                      style: TextStyles.footerBodyText2,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/");
                    },
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  TextButton(
                    child: Text(
                      "Blog",
                      style: TextStyles.footerBodyText2,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/blog");
                    },
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  TextButton(
                    child: Text(
                      "Hire Me",
                      style: TextStyles.footerBodyText2,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      LineIcons.twitter,
                      color: Color(0xff656d78),
                    ),
                    hoverColor: Color(0xff1da1f2),
                  ),
                  IconButton(
                    icon: Icon(
                      LineIcons.github,
                      color: Color(0xff656d78),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      LineIcons.instagram,
                      color: Color(0xff656d78),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
