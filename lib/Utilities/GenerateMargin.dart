import 'package:flutter/cupertino.dart';

double GenerateMargin(BuildContext context) {
  double margin = MediaQuery.of(context).size.width - 1762.14 + 352 + 60 + 100;

  if (margin < 40) {
    margin = 40;
  }

  return margin;
}
