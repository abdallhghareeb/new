import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/core/constant/images.dart';

class ChangeQuantityWidget extends StatelessWidget {
  const ChangeQuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: appPadding,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(2.w),
      ),
      child: Row(
        children: [
          Container(
            width: 29.w,
            height: 18.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.w),
                image: DecorationImage(image: AssetImage(Images.italyImage),fit: BoxFit.cover)
            ),


          ),
          Column(
            children: [
              Text("اسم المنتج",style: TextStyleClass.semiBoldStyle(),),
              SizedBox(height: 3.h,),
              Text("22.12رس",style: TextStyleClass.smallStyle(color: HexColor("#25A189")),),

            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(1.w),
                padding:  EdgeInsets.all(1.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.w),
                  border: Border.all(color: HexColor("BABABA")),
                ),
                child: Icon(
                  Icons.add,
                  color: HexColor("#25A189"),
                ),
              ),
              Text("3",style: TextStyleClass.semiBoldStyle(),),

              Container(
                margin: EdgeInsets.all(1.w),
                padding:  EdgeInsets.all(1.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.w),
                    border: Border.all(color: HexColor("BABABA"))
                ),
                child: Icon(
                  Icons.minimize,
                  size: 10.w,
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
