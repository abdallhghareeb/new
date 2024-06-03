import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';

class ButtonWidget extends StatelessWidget {
  final String textOfButton;
  final Color colorOfButton;
  Color ? textColor;
  VoidCallback  ? buttonFunction;
  ButtonWidget({required this.textOfButton,
    required this.colorOfButton,
    this.textColor,
    this.buttonFunction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        width: 90.w,
        height: 5.5.h,
        margin:EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
        decoration: BoxDecoration(
          color: colorOfButton,
          borderRadius: BorderRadius.circular(2.w)
        ),
        child: Center(child: Text(textOfButton,style: TextStyleClass.normalBoldStyle(color: textColor?? Colors.white),),),
      ),
    );
  }
}
