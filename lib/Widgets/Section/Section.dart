import 'package:flutter/material.dart';
import 'package:personal_website/DataModels/CardModel.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'DesktopSection.dart';
import 'MobileSection.dart';

class Section extends StatelessWidget {
  final List<CardModel> cards;
  final int maxSize;

  Section({this.cards, this.maxSize});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: ScreenBreakpoints(tablet: 900, desktop: 1300, watch: 300),
      mobile: (BuildContext context) => MobileSection(cards, 1),
      tablet: (BuildContext context) => MobileSection(cards, 2),
      desktop: (BuildContext context) => DesktopSection(cards, 3),
    );
  }
}
