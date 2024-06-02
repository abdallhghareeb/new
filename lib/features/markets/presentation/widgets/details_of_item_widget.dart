import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/core/constant/images.dart';

class DetailsOfItemWidget extends StatelessWidget {
  const DetailsOfItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: appPadding,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 5.w),child: Text("5.5رس",style: TextStyleClass.smallLineThroughDecorationStyle(color: HexColor("#E97053")),)),

                  Text("3.2رس",style: TextStyleClass.semiBoldStyle(color: HexColor("#25A189")),),

                ],),
              Expanded(
              child: Row(
                children: [
                  Text(textAlign: TextAlign.right,"بيتزا خضار مع اضافة صوصات ",style: TextStyleClass.semiBoldStyle(),),
                ],
              ),
                      ),
            ],
          ),
          SizedBox(height: 2.h,),
          Text("وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج  وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج ",style: TextStyleClass.normalStyle(),),
          SizedBox(height: 2.h,),
        ],
      ),
    );
  }
}