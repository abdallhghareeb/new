import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../config/app_color.dart';
import '../constants/constants.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key, required this.selected, this.myColor});
  final Color ? myColor;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.isTablet?4.w:5.w,
      height: Constants.isTablet?4.w:5.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: selected ? myColor??AppColor.defaultColor :Colors.grey,width: 3),
      ),
      padding: EdgeInsets.all(0.5.w),
      child: Container(
        decoration: BoxDecoration(
          color: selected?myColor??AppColor.defaultColor:Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
