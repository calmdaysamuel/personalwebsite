import 'package:flutter/cupertino.dart';
import 'package:personal_website/enums/DeviceScreenType.dart';

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }

  return DeviceScreenType.Mobile;
}
