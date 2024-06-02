import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';

import '../constant/constant.dart';

class ButtonWidget extends StatelessWidget {
  final String textOfButton;
  final Color colorOfButton;
  ButtonWidget({required this.textOfButton,required this.colorOfButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
      decoration: BoxDecoration(
        color: colorOfButton,
        borderRadius: BorderRadius.circular(2.w)
      ),
      child: Center(child: Text(textOfButton,style: TextStyleClass.normalBoldStyle(color: Colors.white),),),
    );
  }
}
