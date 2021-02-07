import 'package:flutter/material.dart';
import 'package:personal_website/DataModels/CardModel.dart';
import 'package:personal_website/Widgets/Card/CardSquare.dart';

class DesktopSection extends StatelessWidget {
  final List<CardModel> cards;
  List<Widget> section = [];
  final int maxSize;

  DesktopSection(this.cards, this.maxSize) {
    generateSection();
  }

  void generateSection() {
    List<Widget> tempList = [];
    int count = 0;
    var alignment = (this.maxSize == 1)
        ? MainAxisAlignment.center
        : MainAxisAlignment.spaceBetween;
    for (var item in this.cards) {
      //print(section);
      tempList.add(Container(width: 400, child: CardSquare.cardBody(card: item,)));

      count += 1;

      if (count == this.maxSize) {
        section.add(Row(
          mainAxisAlignment: alignment,
          children: tempList,
        ));
        section.add(SizedBox(
          height: 35,
        ));
        count = 0;
        tempList = [];
      }
    }

    if (tempList.length > 0) {
      section.add(Row(
        children: tempList,
        mainAxisAlignment: MainAxisAlignment.start,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: section,
      ),
    );
  }
}
