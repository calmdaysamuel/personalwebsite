import 'package:flutter/material.dart';
import 'package:personal_website/Widgets/Header/DesktopHeader.dart';
import 'package:personal_website/Widgets/Header/MobileHeader.dart';
import 'package:personal_website/Widgets/Header/MobileHeader.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileHeader(),
      tablet: (BuildContext context) => DesktopHeader(),
      desktop: (BuildContext context) => DesktopHeader(),
    );
  }
}
