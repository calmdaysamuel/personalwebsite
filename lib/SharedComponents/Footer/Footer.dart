import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/Footer/DesktopFooter.dart';
import 'package:personal_website/SharedComponents/Footer/MobileFooter.dart';
import 'package:personal_website/enums/DeviceScreenType.dart';
import 'package:personal_website/enums/ResponsiveBaseWidget.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBaseWidget(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
          return DesktopFooter();
        }

        return MobileFooter();
      },
    );
  }
}
