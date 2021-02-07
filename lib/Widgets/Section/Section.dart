import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'DesktopSection.dart';

class Section extends StatelessWidget {
  final List<Widget> cards;
  final int maxSize;

  Section({this.cards, this.maxSize});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: ScreenBreakpoints(tablet: 900, desktop: 1300, watch: 300),
      mobile: (BuildContext context) => DesktopSection(cards, 1),
      tablet: (BuildContext context) => DesktopSection(cards, 2),
      desktop: (BuildContext context) => DesktopSection(cards, 3),
    );
  }
}
