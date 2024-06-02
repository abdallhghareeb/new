import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TextStyleClass {
  static TextStyle bigStyle({Color? color, FontWeight? fontWeight}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 22.sp,
      height: 1.3,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle semiBigStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 19.sp,
      height: 1.3,
      //fontWeight: FontWeight.bold,
    );
  }

  static TextStyle semiBigBoldStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 19.sp,
      height: 1.3,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle headBoldStyle({Color? color, double? fontSize}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: fontSize ?? 16.sp,
      height: 1.3,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle headStyle({Color? color, double? fontSize}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: fontSize ?? 16.sp,
      height: 1.3,
    );
  }

  static TextStyle semiHeadBoldStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 15.sp,
      height: 1.3,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle semiHeadStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 15.sp,
      height: 1.3,
    );
  }

  static TextStyle semiStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      height: 1.3,
    );
  }

  static TextStyle semiDecorationStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 13.sp,
      height: 1.3,
      decoration: TextDecoration.underline,
      decorationColor: color ?? Colors.black,
    );
  }

  static TextStyle semiBoldStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 13.sp,
      height: 1.3,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle normalStyle({Color? color,double? fontSize}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: fontSize ?? 10.sp,
      height: 1.3,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle normalLineThroughStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      decoration: TextDecoration.lineThrough,
      fontSize: 10.sp,
      height: 1.3,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle normalBoldStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 11.sp,
      height: 1.3,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle textButtonStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.white,
      fontSize: 14.sp,
      height: 1.3,
    );
  }

  static TextStyle smallTextButtonStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.white,
      fontSize: 9.sp,
      height: 1.3,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle smallStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 9.sp,
      height: 1.3,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle smallBoldStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 9.sp,
      height: 1.3,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle tinyStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 7.5.sp,
      height: 1.3,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle tinyBoldStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 7.5.sp,
      height: 1.3,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle veryTinyStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 5.5.sp,
      height: 1.3,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle smallDecorationStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 9.sp,
      height: 1.3,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      decorationColor: color ?? Colors.black,
    );
  }
  static TextStyle smallLineThroughDecorationStyle({Color? color}) {
    return GoogleFonts.cairo(
      color: color ?? Colors.black,
      fontSize: 9.sp,
      height: 1.3,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.lineThrough,
      decorationColor: color ?? Colors.black,
    );
  }
}
