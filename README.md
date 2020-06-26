# flutter_responsive_demo
レスポンシブデザイン対応


## Baseクラス

```
class BaseWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInfo sizingInformation)
      builder;
  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(
      builder: (context, boxsizing) {
        var sizingInfo = SizingInfo(
          orientation: mediaQuery.orientation,
          deviceType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxsizing.maxWidth, boxsizing.maxHeight),
        );
        return builder(context, sizingInfo);
      },
    );
  }

  DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
    var orientation = mediaQuery.orientation;
    double deviceWidth = 0;
    if (orientation == Orientation.landscape) {
      deviceWidth = mediaQuery.size.height;
    } else {
      deviceWidth = mediaQuery.size.width;
    }
    if (deviceWidth > 600) {
      return DeviceScreenType.Tablet;
    }
    return DeviceScreenType.Mobile;
  }
}

```

## モバイル、タブレット共通画面
デバイスタイプにより、画面を出し分ける

```
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
```
