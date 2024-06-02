import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Constants {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
  static bool isTablet = false;
  static const circularBorderRadius = BorderRadius.vertical(top: Radius.circular(53));
  static const String baseUri = 'https://maijz.frmawy.tech/public/api/';
  static BuildContext globalContext() {
    return navState.currentContext!;
  }
}

EdgeInsetsGeometry appPadding = EdgeInsets.only(left: 3.w, right: 3.w, top: 5.w);
EdgeInsetsGeometry customWidgetAppPadding = EdgeInsets.all(2.w);

