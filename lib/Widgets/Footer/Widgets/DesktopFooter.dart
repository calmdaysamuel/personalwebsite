import 'package:flutter/material.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:personal_website/Utilities/WebsiteRoute.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => WebsiteRoute.navigateToStaticPage("home", context),
            child: Text(
              "Samuel \nCalmday",
              style: TextStyles.footerTitle,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Projects",
                style: TextStyles.buttonText,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () =>
                    WebsiteRoute.navigateToProject("chernobyl++", context),
                child: Text(
                  "Chernobyl++",
                  style: TextStyles.buttonText,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () =>
                    WebsiteRoute.navigateToProject("personal-website", context),
                child: Text(
                  "Personal Website",
                  style: TextStyles.buttonText,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => WebsiteRoute.navigateToStaticPage(
                    "project-gallery", context),
                child: Text(
                  "All Projects",
                  style: TextStyles.buttonText,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact",
                style: TextStyles.buttonText,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => launch("https://github.com/calmdaysamuel/"),
                child: Text(
                  "Github",
                  style: TextStyles.buttonText,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () =>
                    launch("https://www.linkedin.com/in/samcalmday/"),
                child: Text(
                  "LinkedIn",
                  style: TextStyles.buttonText,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => WebsiteRoute.navigateToStaticPage(
                    "experience-gallery", context),
                child: Text(
                  "All Experience",
                  style: TextStyles.buttonText,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
