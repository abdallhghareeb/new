import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/images.dart';

class TaskSubCategoryWidget extends StatelessWidget {
  const TaskSubCategoryWidget({super.key,required this.myMap});
  final Map<String,dynamic>  myMap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Column(
        children: [
          SizedBox(height: 3.h),
          Container(
            height: 14.w,
            width: 14.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2.w),
              image: DecorationImage(
                image: AssetImage(myMap['categoryImage']),fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: 1.h),
          Text(myMap['categoryName'],
              style:  TextStyleClass.smallStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
