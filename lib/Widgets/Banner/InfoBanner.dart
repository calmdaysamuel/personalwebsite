import 'package:flutter/material.dart';

class InfoBanner extends StatelessWidget {
  final String info;

  InfoBanner(this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(info),
    );
  }
}
