import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/images.dart';

class SubCategoryWidget extends StatelessWidget {
  const SubCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        width: 19.w,
        padding: EdgeInsets.all(1.w),
        margin: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.w),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 1,
                offset: const Offset(0, 5), // changes position of shadow
              ),
            ]),
        child: Column(
          children: [
            const SvgWidget(
              svg: Images.shopsIcon,
            ),
            SizedBox(height: 0.5.h),
            Text("الاسواق",
                style:  TextStyleClass.normalStyle()),
          ],
        ),
      ),
    );
  }
}
