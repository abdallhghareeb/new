import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';

class CategoryContainer extends StatelessWidget {
  int index = 0;
  CategoryContainer({super.key,required this.index});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.5.w,vertical: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.w),
        color: index ==0 ? HexColor("#E97053"): Colors.white ,
        border: Border.all(color: index == 0 ? HexColor("#E97053"):HexColor("#B9C0C9"))
      ),
      child: Center(
        child: Text("فئة فرعية",style: TextStyleClass.smallBoldStyle(color:index==0? Colors.white : HexColor("#264653")),),
      ),
    );
  }
}
