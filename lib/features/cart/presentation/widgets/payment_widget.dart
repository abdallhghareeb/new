import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/svg_widget.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.w,
        padding: customWidgetAppPadding,
        margin: EdgeInsets.symmetric(horizontal:5.w),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.w),
            boxShadow: [
              myBoxShadow,
            ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SvgWidget(svg: Images.masterCardIcon,width: 6.w,height: 6.w,),
                      SizedBox(width: 4.w,),
                      Text("بطاقة الماستر كارد",style: TextStyleClass.smallStyle(),),

                    ],
                  ),
                ),
                Container(width: 5.w,height: 5.w,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.w),
                  border: Border.all(color: HexColor("#BABABA"))
                ),),
              ],
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  child: Row(
                    children: [
                      SvgWidget(svg: Images.applePayIcon,width: 6.w,height: 6.w,),
                      SizedBox(width: 4.w,),
                      Text("Apple Pay",style: TextStyleClass.smallStyle()),
                    ],
                  ),
                ),
                Container(width: 5.w,height: 5.w,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.w),
                    border: Border.all(color: HexColor("#BABABA"))
                ),),
              ],
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("اضافة بطاقة جديدة", style: TextStyleClass.smallBoldStyle(color: HexColor("#E97053")),),
                SizedBox(width: 4.w,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.w),
                    border: Border.all(color: HexColor("#E97053")),),
                  child: Icon(Icons.add, color: HexColor("#E97053"),size: 4.w,),
                ),
              ],
            ),
            SizedBox(height: 2.h,),
          ],
        ));
  }
}
