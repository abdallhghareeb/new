import 'package:flutter/material.dart';
import 'package:untitled1/core/helper_functions/navigation.dart';
import 'package:untitled1/features/home/presentation/pages/home_page.dart';
import 'package:untitled1/features/profile/presentation/pages/wallet_main_page.dart';
import '../../../../core/constant/images.dart';

class ProfileProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> myProfileIcons = [
    {
      "text": "عناويني",
      "svg": Images.profileLocation,
      "route": WalletMainPage()
    },
    {
      "text": "مشاركة التطبيق",
      "svg": Images.profileShareApp,
      "route": HomeScreen()
    },
    {
      "text": "سياسة الاستخدام",
      "svg": Images.profilePolicy,
      "route": HomeScreen()
    },
    {
      "text": "عن التطبيق",
      "svg": Images.profileAbout,
      "route": HomeScreen()
    },
    {
      "text": "تواصل معنا",
      "svg": Images.profileContactUs,
      "route": HomeScreen()
    },
    {
      "text": "حذف الحساب",
      "svg": Images.profileDelete,
      "route": HomeScreen()
    },
  ];

  void goToPages({required Widget className}){
    navP(className);
  }

}
