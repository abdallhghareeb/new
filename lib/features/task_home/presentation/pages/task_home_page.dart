import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/features/task_home/presentation/widgets/slider_widget.dart';
import '../../../../core/constants/images.dart';
import '../../../markets/presentation/widgets/market_image_List.dart';
import '../widgets/list_popular_restaurant_widget.dart';
import '../widgets/list_restaurant_widget.dart';
import '../widgets/task_app_bar_widget.dart';
import '../widgets/task_main_list_categories.dart';

class TaskHomeScreen extends StatelessWidget {
  TaskHomeScreen({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      body: Container(
          width: 100.w,
          height: 100.h,
          child: SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 100.w,
                  height: 38.h,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            Images.hilalImage,
                          ))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      children: [
                        SizedBox(height: 5.h),
                        TaskAppBarRow(),
                        SizedBox(height: 8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("التصنيفات",
                                style: TextStyleClass.smallBoldStyle(
                                    color: Colors.white)),
                            Text("المطاعم",
                                style: TextStyleClass.smallBoldStyle(
                                    color: Colors.white)),
                          ],
                        ),
                        const TaskListSubCategoriesWidget(),
                        SizedBox(height: 2.h),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35.h),
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.w),
                      topRight: Radius.circular(8.w),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SliderWidget(),
                      SizedBox(height: 3.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("اشهر المطاعم / الكافيهات",
                                style: TextStyleClass.smallBoldStyle()),
                            Text("الكل",
                                style: TextStyleClass.smallBoldStyle(
                                    color: HexColor("#7F41B4"))),
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h),
                      const ListPopularRestaurantWidget(),
                      SizedBox(height: 1.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("المطاعم",
                                style: TextStyleClass.smallBoldStyle()),
                            Text("الكل",
                                style: TextStyleClass.smallBoldStyle(
                                    color: HexColor("#7F41B4"))),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const ListRestaurantWidget(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
