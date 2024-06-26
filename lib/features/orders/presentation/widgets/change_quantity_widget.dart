import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/constants/images.dart';

class ChangeQuantityWidget extends StatelessWidget {
  const ChangeQuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.w,
        height: 14.h,
        padding: customWidgetAppPadding,
        margin: EdgeInsets.symmetric(horizontal:5.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.w),
          boxShadow: [
            myBoxShadow,
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [

                Container(
                  margin: EdgeInsets.all(1.w),
                  padding: EdgeInsets.all(0.5.w),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.w),
                    border: Border.all(color: HexColor("#BABABA")),),
                  child: Icon(Icons.add, color: MyColor.firstColor,),
                ),
                Text("3", style: TextStyleClass.semiStyle(),),
                Container(
                  margin: EdgeInsets.all(1.w),
                  padding: EdgeInsets.all(0.5.w),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.w),
                    border: Border.all(color: HexColor("#BABABA")),),
                  child: Icon(Icons.remove, color: HexColor("#BABABA"),),
                ),
              ],
            ),
            Row(

              children: [
                Column(
                  children: [
                    Text("اسم المنتج", style: TextStyleClass.semiBoldStyle(),),
                    SizedBox(height: 3.h,),
                    Text("22.12رس", style: TextStyleClass.smallStyle(color: MyColor.firstColor),),
                  ],
                ),
                SizedBox(width:1.w,),
                Container(
                  width: 17.w,
                  height: 17.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.w),
                      image: DecorationImage(image: AssetImage(Images.italyImage), fit: BoxFit.cover)),
                ),
              ],
            ),
          ],
        ));
  }
}
