import 'package:flutter/material.dart';
import 'package:personal_website/enums/SizingInformation.dart';
import 'package:personal_website/enums/deviceScreenTypeUtil.dart';

class ResponsiveBaseWidget extends StatelessWidget {
  final Widget Function(BuildContext, SizingInformation) builder;

  ResponsiveBaseWidget({this.builder});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var sizingInformation = SizingInformation(
      orientation: mediaQuery.orientation,
      deviceScreenType: getDeviceScreenType(mediaQuery),
      size: mediaQuery.size,
    );
    return builder(context, sizingInformation);
  }
}
