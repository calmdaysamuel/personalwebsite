import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
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
                  SizedBox(height: 17,),
                  Text(
                    "I'm always interested in working on new projects.",
                    style: TextStyles.footerBodyText,
                  ),
                  Text(
                    "Hire me if you would like to work together.",
                    style: TextStyles.footerBodyText,
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
                  SizedBox(height: 17,),
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
      ],
    ));
  }
}
