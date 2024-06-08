import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/constants.dart';

class MainWidget extends StatelessWidget {
  final Widget widget;
  const MainWidget({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      padding: appPadding,
      child: widget,
    );
  }
}
