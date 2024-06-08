import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/constants.dart';
import '../../../markets/presentation/widgets/market_image_List.dart';
import '../widgets/list_category_container.dart';

class CategoryHome extends StatelessWidget {
  CategoryHome({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: myKey,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "الفئة",
            textAlign: TextAlign.center,
            style: TextStyleClass.semiBoldStyle(),
          ),
        ),
        body: Container(
            width: 100.w,
            height: 100.h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 2.h),
                  Padding(
                    padding: EdgeInsets.only(right: 2.w),
                    child: const ListCategoryContainer(),
                  ),
                  SizedBox(height: 2.h),
                  Padding(
                    padding: customWidgetAppPadding,
                    child: const MarketImageListWidget(),
                  ),
                ],
              ),
            )));
  }
}
