import 'package:flutter/material.dart';
import 'package:personal_website/DataModels/CardModel.dart';
import 'package:personal_website/Widgets/Card/CardSquare.dart';

import '../../DataSet.dart';

class MobileSection extends StatelessWidget {
  final List<CardModel> cards;
  final int maxSize;
  List<Widget> gallery = [];
  MobileSection(this.cards, this.maxSize){
    generateProject(this.cards);
  }

  void generateProject(List<CardModel> list) {
    for (var item in list) {
      gallery.add(CardSquare.cardBody(
        card: item,
      ));

      gallery.add(SizedBox(
        height: 35,
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: gallery,
      ),
    );
  }
}
