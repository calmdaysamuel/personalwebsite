import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var margin = MediaQuery.of(context).size.width - 1762.14 + 352 + 60 + 100;
    if(margin < 0){
      margin = 12;
    }
    return Container(
        padding: EdgeInsets.fromLTRB(margin/2, 0, margin/2, 0),
        height: 396.0,
        color: Color(0xff0b0c0d),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CONTENT",
                        style: TextStyles.footerHeaderText,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "I'm always interested in working on new projects.",
                        style: TextStyles.footerBodyText,
                      ),
                      Text(
                        "Hire me if you would like to work together.",
                        style: TextStyles.footerBodyText,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(
                              LineIcons.twitter,
                              color: Color(0xff656d78),
                            ),
                            color: Color(0xff1da1f2),
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
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "© 2020 Calmday. All Rights Reserved.",
                        style: TextStyles.footerReservedText,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SUBSCRIBE",
                        style: TextStyles.footerHeaderText,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "Subscribe to my newsletter to stay updated on",
                        style: TextStyles.footerBodyText2,
                      ),
                      Text(
                        "projects and whatever else I’m working on.",
                        style: TextStyles.footerBodyText2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
