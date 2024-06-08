import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constants/colors.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:3.w,vertical: 1.h),
      margin: EdgeInsets.symmetric(horizontal:3.w,vertical: 1.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 0.5,
          offset: const Offset(1, 1), // changes position of shadow
        )]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            SizedBox(width: 4.w,),
            SizedBox(width: 30.w,child: Text("اجمالي الطلب",style: TextStyleClass.smallStyle(),)),
            Text("15 رس",style: TextStyleClass.smallStyle(color: HexColor("#581D8A")),),
          ],),
          Container(

            margin: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
            height: 0.02.h,
            color: Colors.grey,
            width: 100.w,
          ),
          Row(children: [
            SizedBox(width: 4.w,),
            SizedBox(width: 30.w,child: Text(" 20% الخصم",style: TextStyleClass.smallStyle(),)),
            Text("15 رس",style: TextStyleClass.smallStyle(color: Colors.red),),
          ],),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
            height: 0.02.h,
            color: Colors.grey,
            width: 100.w,
          ),
          Row(children: [
            SizedBox(width: 4.w,),
            SizedBox(width: 30.w,child: Text("التوصيل",style: TextStyleClass.smallStyle(),)),
            Text("15 رس",style: TextStyleClass.smallStyle(color: HexColor("#581D8A")),),
          ],),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
            height: 0.02.h,
            color: Colors.grey,
            width: 100.w,
          ),
          Row(children: [
            SizedBox(width: 4.w,),
            SizedBox(width: 30.w,child: Text("الضريبة المضافة",style: TextStyleClass.smallStyle(),)),
            Text("15 رس",style: TextStyleClass.smallStyle(color: HexColor("#581D8A")),),
          ],),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
            height: 0.02.h,
            color: Colors.grey,
            width: 100.w,
          ),
          Row(children: [
            SizedBox(width: 4.w,),
            SizedBox(width: 30.w,child: Text("الاجمالي",style: TextStyleClass.smallStyle(),)),
            Text("15 رس",style: TextStyleClass.smallStyle(color: HexColor("#581D8A")),),
          ],),
        ],
      ),
    );
  }
}
