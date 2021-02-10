import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:personal_website/Styles/Colors.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:personal_website/Utilities/WebsiteRoute.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorStyle.primaryBlack,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              WebsiteRoute.navigateToStaticPage("home", context);
            },
            child: Text(
              "SAMUEL CALMDAY",
              style: TextStyles.headerTitle,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Ionicons.mail_outline,
                    color: ColorStyle.primaryWhite,
                  ),
                  onPressed: () {
                    launch("mailto:sam@thecalmday.com");
                  }),
              IconButton(
                  icon: Icon(
                    Ionicons.logo_linkedin,
                    color: ColorStyle.primaryWhite,
                  ),
                  onPressed: () {
                    launch("https://www.linkedin.com/in/samcalmday/");
                  }),
              IconButton(
                  icon: Icon(
                    Ionicons.logo_github,
                    color: ColorStyle.primaryWhite,
                  ),
                  onPressed: () {
                    launch("https://github.com/calmdaysamuel/");
                  }),
            ],
          )
        ],
      ),
    );
  }
}