import 'package:flutter/material.dart';
import 'package:untitled1/core/constants/colors.dart';
import 'package:untitled1/features/home/presentation/pages/home_page.dart';
import 'package:untitled1/features/profile/presentation/pages/profile_home.dart';
import '../../../../core/constants/images.dart';
import '../../../chat/presentation/pages/main_chat_home.dart';
import '../../../orders/presentation/pages/orders_home.dart';
import '../../../videos/presentation/pages/videos_home_page.dart';

class BottomNavProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> myBottomNavWidgets = [
    {
      "text": "الرئيسية",
      "svg": Images.bottomNavHome,
      "page": VideosHomePage(),
    },

    {
      "text": "الدردشة",
      "svg": Images.bottomNavMessage,
      "page": MainChatHome(),
    },
    {
      "text": "طلباتي",
      "svg": Images.bottomNavOrders,
      "page": OrderHomePage(),
    },
    {
      "text": "حسابي",
      "svg": Images.bottomNavUser,
      "page": ProfileHomePage(),
    },
  ];
  int index = 0;

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

  Widget changeNavWidget() {
    return myBottomNavWidgets[index]['page'];
  }

  bool isVideosPage = true;

  void toggleBetweenHomeAndVideos() {
    isVideosPage = !isVideosPage;
    if (isVideosPage) {
      myBottomNavWidgets[0]['page'] = const VideosHomePage();
    }else{
      myBottomNavWidgets[0]['page'] = HomeScreen();
    }
    notifyListeners();
  }

}