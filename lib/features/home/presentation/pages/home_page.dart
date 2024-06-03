import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:untitled1/features/home/presentation/widgets/main_list_categories.dart';
import '../../../banners/presentation/widgets/banner_resturant_widget.dart';
import '../../../markets/presentation/widgets/market_image_List.dart';
import '../widgets/bottom_nav_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: myKey,
        body: Container(
            width: 100.w,
            height: 100.h,
            padding: appPadding,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 2.h),
                  const AppBarRow(),
                  SizedBox(height: 2.h),
                  BannerRestaurantWidget(),
                  SizedBox(height: 2.h),
                  Text("الفئات",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w600)),
                  const ListSubCategoriesWidget(),
                  SizedBox(height: 2.h),
                  Text("المطاعم الايطالية",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w600)),
                  SizedBox(height: 2.h),
                  const MarketImageListWidget(),
                  SizedBox(height: 2.h),
                ],
              ),
            )),
    );
  }
}
