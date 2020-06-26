import 'package:flutter/material.dart';
import 'package:flutterresponsivedemo/data/device_screen_type.dart';
import 'package:flutterresponsivedemo/views/base_widget.dart';
import 'package:flutterresponsivedemo/views/home/home_page_mobile.dart';
import 'package:flutterresponsivedemo/views/home/home_page_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      bool _isMobile = sizingInformation.deviceType == DeviceScreenType.Mobile;

      return Scaffold(
          appBar: AppBar(
            title: _isMobile ? Text("Mobile") : Text("Tablet"),
          ),
          body: _isMobile ? HomePageMobile() : HomePageTablet());
    });
  }
}
