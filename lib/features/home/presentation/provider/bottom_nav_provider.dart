import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/colors.dart';
import 'package:untitled1/core/helper_functions/navigation.dart';
import 'package:untitled1/features/home/presentation/pages/home_page.dart';
import 'package:untitled1/features/profile/presentation/pages/profile_home.dart';
import '../../../../core/constant/images.dart';
import '../../../chat/presentation/pages/main_chat_home.dart';
import '../../../orders/presentation/pages/orders_home.dart';

class BottomNavProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> myBottomNavWidgets = [
    {
      "text": "حسابي",
      "svg": Images.bottomNavUser,
      "page":ProfileHomePage(),
    },
    {
      "text": "طلباتي",
      "svg": Images.bottomNavOrders,
      "page":OrderHomePage(),
    },
    {
      "text": "الدردشة",
      "svg": Images.bottomNavMessage,
      "page":MainChatHome(),
    },
    {
      "text": "الرئيسية",
      "svg": Images.bottomNavHome,
      "page":HomeScreen(),
    },
  ];
  int index = 3;

  void changeNavIndex({required int index}) {

    this.index = index;
    notifyListeners();
  }

  Color colorOfNavWidget({required int index}) {
    if (this.index == index) {
      return MyColor.firstColor;
    }
    return MyColor.bottomNavColor;
  }

  Widget changeNavWidget(){
    return  myBottomNavWidgets[index]['page'];
  }
}
