import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/colors.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/checkbox_widget.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';

class MyLocationWidget extends StatelessWidget {
  const MyLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 5.w),
      margin: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
          color: Colors.white,
          boxShadow: [myBoxShadow]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("الرصيد",style: TextStyleClass.normalBoldStyle(),),
                    SizedBox(height: 0.5.h,),
                    Text("323232",style: TextStyleClass.normalBoldStyle(),),
                    SizedBox(height: 0.5.h,),
                    Text("A1907,74,22 pd",style: TextStyleClass.normalBoldStyle(),),
                    SizedBox(height: 0.5.h,),
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Container(
                    height: 5.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2.w),bottomRight: Radius.circular(2.w), ),
                        color: Colors.white,
                      boxShadow: [
                       myBoxShadow
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgWidget(svg: Images.deletePen,width: 7.w,height: 7.w,),
                        SizedBox(width: 2.w,),
                        Text("حذف",style: TextStyleClass.normalBoldStyle(color: Colors.red),),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Container(
                    height: 5.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2.w),bottomRight: Radius.circular(2.w), ),
                        color: Colors.white,
                        boxShadow: [myBoxShadow]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgWidget(svg: Images.editPen,width: 7.w,height: 7.w,),
                        SizedBox(width: 2.w,),
                        Text("تعديل",style: TextStyleClass.normalBoldStyle(color: HexColor("#264653")),),

                      ],
                    ),
                  ),
                ],
              )


            ],
          ),
          CheckBoxWidget(check: true, onChange: (s){}
          )
        ],
      ),
    );
  }


}