import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';

class PopularRestaurantWidget extends StatelessWidget {
  PopularRestaurantWidget( {super.key});
  @override
  Widget build(BuildContext context) {

    return  SizedBox(
      width: 45.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height:15.h,
                width: 46.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                  image: DecorationImage(
                    image:  const AssetImage(Images.orderImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 8.w,
                height: 8.w,
                margin: EdgeInsets.all(2.w),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(2.5.w),
                    color: Colors.white
                ) ,
                child: SvgWidget(
                  svg:Images.like_outline,
                  width: 4.w,
                  height: 4.w,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.h,vertical: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "مطعم بيتزا",
                  textAlign: TextAlign.right,
                  style: TextStyleClass.normalStyle(fontSize: 9.sp),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 2.w,
                ),
                Text(
                  "عنوان المطعم",
                  textAlign: TextAlign.right,
                  style: TextStyleClass.smallStyle(
                    color: HexColor("#878787"),

                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2.w,
                ),
                Row(
                  children: [
                    Container(

                      padding: EdgeInsets.symmetric(vertical: 1.5.w,horizontal:2.5.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.w),
                          color: HexColor("#581D8A")
                      ),
                      child: Text(
                        "4.8",
                        textAlign: TextAlign.right,
                        style: TextStyleClass.tinyBoldStyle(
                         color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Container(

                      padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            color: HexColor("#E7E3E3")
                        ),
                        child: SvgWidget(svg: Images.burger,width: 3.w,height: 3.w,))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
