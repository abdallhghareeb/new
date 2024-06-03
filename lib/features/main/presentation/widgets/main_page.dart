import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:untitled1/features/home/presentation/widgets/main_list_categories.dart';
import '../../../banners/presentation/widgets/banner_resturant_widget.dart';
import '../../../home/presentation/provider/bottom_nav_provider.dart';
import '../../../home/presentation/widgets/bottom_nav_widget.dart';
import '../../../markets/presentation/widgets/market_image_List.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var bottomNavProvider = Provider.of<BottomNavProvider>(context);

    return Scaffold(
      key: myKey,
      body: bottomNavProvider.changeNavWidget(),
      bottomNavigationBar: BottomNavWidget(),

    );
  }
}
