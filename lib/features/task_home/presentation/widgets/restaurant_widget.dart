import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../core/constants/images.dart';

class RestaurantWidget extends StatelessWidget {
  RestaurantWidget( {super.key});
  @override
  Widget build(BuildContext context) {

    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      width: 100.w,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height:15.h,
            width: 100.w,
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
            height:15.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
              color: Colors.black.withOpacity(0.5),
            ),

          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1.h,vertical: 1.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "مطعم بيتزا",
                      textAlign: TextAlign.right,
                      style: TextStyleClass.semiBoldStyle(color: Colors.white),
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
                        color: Colors.white,

                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:3.w),
                child: Row(
                  children: [
                    Container(

                      padding: EdgeInsets.symmetric(vertical: 1.w,horizontal:2.5.w),
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
                        width: 7.w,
                        height: 6.w,
                        padding: EdgeInsets.all(1.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.w),
                            color: HexColor("#E7E3E3")
                        ),
                        child: SvgWidget(svg: Images.burger,width: 3.w,height: 3.w,)),
                    Container(
                      width: 7.w,
                      height: 6.w,
                      margin: EdgeInsets.all(2.w),
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(1.w),
                          color:  HexColor("#E7E3E3")
                      ) ,
                      child: SvgWidget(
                        svg:Images.like_outline,
                        width: 3.w,
                        height: 3.w,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}