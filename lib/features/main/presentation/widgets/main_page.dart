import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/core/helper_functions/navigation.dart';
import 'package:untitled1/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:untitled1/features/home/presentation/widgets/main_list_categories.dart';
import '../../../abstract_test/presentation/pages/my_test_page.dart';
import '../../../abstract_test/presentation/pages/test_home.dart';
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
      bottomNavigationBar:  BottomNavWidget(),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.w),
                  color: Colors.white
              ),
              child: TextButton(onPressed: (){
                navP(TestHome());
              }, child: Text(
                "Page 1",style: TextStyleClass.semiBoldStyle(),
              )),
            ),
            SizedBox(width: 3.w,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.w),
                  color: Colors.red
              ),
              child: TextButton(onPressed: (){
                navP(MyTestHome());
              }, child: Text(

                "Page 2",style: TextStyleClass.semiBoldStyle(),
              )),
            ),

          ],
        ),
      ),

    );
  }
}
