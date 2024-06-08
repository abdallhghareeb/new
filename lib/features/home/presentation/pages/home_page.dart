import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:untitled1/features/home/presentation/widgets/main_list_categories.dart';
import '../../../../core/constants/constants.dart';
import '../../../banners/presentation/widgets/banner_resturant_widget.dart';
import '../../../markets/presentation/widgets/market_image_List.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.h),
                  const AppBarRow(),
                  SizedBox(height: 2.h),
                  BannerRestaurantWidget(),
                  SizedBox(height: 2.h),
                  Text("الفئات",
                      style: TextStyleClass.normalBoldStyle()),
                  const ListSubCategoriesWidget(),
                  SizedBox(height: 2.h),
                  Text("المطاعم الايطالية",
                      style:  TextStyleClass.normalBoldStyle()),
                  SizedBox(height: 2.h),
                  const MarketImageListWidget(),
                  SizedBox(height: 10.h),
                ],
              ),
            )),
    );
  }
}
