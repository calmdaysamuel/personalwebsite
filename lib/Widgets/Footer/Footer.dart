import 'package:flutter/material.dart';
import 'package:personal_website/Styles/Colors.dart';
import 'package:personal_website/Utilities/GenerateMargin.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Widgets/DesktopFooter.dart';
import 'Widgets/MobileFooter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var margin = GenerateMargin(context) / 2;
    return Container(
        height: 440,
        color: ColorStyle.primaryBlack,
        padding: EdgeInsets.fromLTRB(margin, 0, margin, 0),
        child: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => MobileFooter(),
          tablet: (BuildContext context) => MobileFooter(),
          desktop: (BuildContext context) => DesktopFooter(),
        ));
  }
}
