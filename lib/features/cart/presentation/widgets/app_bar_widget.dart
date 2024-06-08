import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';

import '../../../../core/constants/images.dart';

class TaskAppBarWidget extends StatelessWidget {
  const TaskAppBarWidget({super.key, required this.height, required this.text,});
  final double height ;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.w),
          bottomRight: Radius.circular(15.w),
        ),image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          Images.gradient,
        )
      )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$text",style: TextStyleClass.semiBoldStyle(color: Colors.white),),
          Container(width: 15.w,color: Colors.white,height: 0.2.h,),
          SizedBox(height: 2.h,),
        ],
      ),
    );
  }
}
