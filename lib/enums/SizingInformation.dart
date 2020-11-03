import 'package:flutter/cupertino.dart';
import 'package:personal_website/enums/DeviceScreenType.dart';

class SizingInformation {
  final Orientation orientation;

  SizingInformation(
      {this.orientation,
      this.deviceScreenType,
      this.size,
      this.localWidgetSize});

  final DeviceScreenType deviceScreenType;
  final Size size;
  final Size localWidgetSize;
}
