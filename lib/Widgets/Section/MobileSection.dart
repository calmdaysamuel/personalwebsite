import 'package:flutter/material.dart';

class MobileSection extends StatelessWidget {
  final cards;
  final int maxSize;

  MobileSection(this.cards, this.maxSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: cards,
      ),
    );
  }
}
