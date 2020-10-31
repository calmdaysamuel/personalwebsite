import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu),
              ),
              Text(
                "Calmday",
                style: TextStyles.titleTextStyle,
              )
            ],
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
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  TextButton(
                    child: Text(
                      "Blog",
                      style: TextStyles.footerBodyText2,
                    ),
                    onPressed: () {},
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
          )
        ],
      ),
    );
  }
}
