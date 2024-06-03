import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../config/app_color.dart';
class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({super.key, required this.check, required this.onChange, this.padding});
  final bool check;
  final EdgeInsets? padding;
  final void Function(bool val) onChange;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onChange(!check);
      },
      child: Container(

        decoration: BoxDecoration(
          border: check?null:Border.all(color: Colors.grey,width: 1.2,
              strokeAlign: BorderSide.strokeAlignCenter),
          color: check?AppColor.defaultColor:Colors.white,
          borderRadius: BorderRadius.circular(2),
        ),
        padding: padding ?? EdgeInsets.all(0.5.w),
        child:  Icon(Icons.done,color: Colors.white,size: 16.sp,),
      ),
    );
  }
}
