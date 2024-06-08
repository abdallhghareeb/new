import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'app_color.dart';
import 'text_style.dart';

ThemeData defaultTheme = ThemeData(
  useMaterial3: false,
  primaryColor: AppColor.defaultColor,
  unselectedWidgetColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  checkboxTheme:checkboxThemeData,
  radioTheme: radioThemeData,
  tabBarTheme: tabBarTheme,
  appBarTheme: appBarTheme,
  splashColor: Colors.transparent,
);

AppBarTheme appBarTheme = AppBarTheme(
  color: const Color.fromRGBO(0, 0, 0, 1),
  centerTitle: true,
  foregroundColor: Colors.white,
  elevation: 0,
  toolbarHeight: 9.5.h,
  titleTextStyle: TextStyleClass.headBoldStyle(color: Colors.black),
);

CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  fillColor: MaterialStateProperty.all<Color>(Colors.transparent),
  checkColor: MaterialStateProperty.all<Color>(AppColor.defaultColor),
  overlayColor: MaterialStateProperty.all<Color>(AppColor.defaultColor),
  visualDensity: VisualDensity.compact,
);

RadioThemeData radioThemeData = RadioThemeData(
  fillColor: MaterialStateProperty.all(AppColor.defaultColor),
);

TabBarTheme tabBarTheme = const TabBarTheme(
  labelColor: AppColor.defaultColor,
  indicatorSize: TabBarIndicatorSize.label,
  unselectedLabelColor: Colors.grey,
);


SystemUiOverlayStyle barColor(){
  if(Platform.isAndroid){
    return const SystemUiOverlayStyle(
        // statusBarBrightness: Brightness.light,
        // // statusBarColor: Colors.white,
        // statusBarIconBrightness: Brightness.dark,
        // systemNavigationBarColor: Colors.white
    );
  }
  return SystemUiOverlayStyle.dark;
}

