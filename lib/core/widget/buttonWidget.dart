import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';

class ButtonWidget extends StatelessWidget {
  final String textOfButton;
  Color? colorOfButton;
  Color ? textColor;
  double ? width;
  double ? height;
  TextStyle ? style;
  VoidCallback  ? buttonFunction;
  ButtonWidget({required this.textOfButton,
     this.colorOfButton,
    this.style,
    this.width,
    this.height,
    this.textColor,
    this.buttonFunction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        width: width??90.w,
        height: height??5.5.h,
        margin:EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
        decoration: BoxDecoration(
          color: colorOfButton ?? HexColor("264653"),
          borderRadius: BorderRadius.circular(2.w)
        ),
        child: Center(child: Text(textOfButton,style:style ?? TextStyleClass.normalBoldStyle(color: textColor?? Colors.white),),),
      ),
    );
  }
}
