import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopFooter extends StatelessWidget {
  DesktopFooter();
  @override
  Widget build(BuildContext context) {
    return Container(
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
                            onPressed: () {
                              launch("https://twitter.com");
                            },
                            icon: Icon(
                              Ionicons.logo_twitter,
                              color: Color(0xff1da1f2),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              launch("https://github.com/calmdaysamuel");
                            },
                            icon: Icon(
                              Ionicons.logo_github,
                              color: Color(0xfff1f8ff),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              launch(
                                  "https://www.instagram.com/haveyoufoundsam/");
                            },
                            icon: Icon(
                              Ionicons.logo_instagram,
                              color: Color(0xffc13584),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              launch("https://www.linkedin.com/in/samcalmday/");
                            },
                            icon: Icon(
                              Ionicons.logo_linkedin,
                              color: Color(0xff006192),
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
