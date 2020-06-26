import 'package:flutter/cupertino.dart';
import 'package:flutterresponsivedemo/data/device_screen_type.dart';

class SizingInfo {
  final Orientation orientation;
  final DeviceScreenType deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInfo(
      {this.orientation,
      this.deviceType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    return ''''
    Orientation:$orientation \nDeviceType:$deviceType \nScreenSize:$screenSize \nLocalWidgetSize:$localWidgetSize
    ''';
  }
}
