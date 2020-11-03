import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  final bool darktheme;

  Header({this.darktheme = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/");
                },
                child: Text(
                  "S. CALMDAY",
                  style: TextStyles.titleTextStyle,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    child: Text(
                      "Work",
                      style: TextStyles.footerBodyText2,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/work");
                    },
                  ),
                  SizedBox(
                    width: 10.0,
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
                    width: 10.0,
                  ),
                  TextButton(
                    child: Text(
                      "Hire Me",
                      style: TextStyles.footerBodyText2,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/hire-me");
                    },
                  ),
                ],
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
                      launch("https://www.instagram.com/haveyoufoundsam/");
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
