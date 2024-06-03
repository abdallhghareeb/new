import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/profile/presentation/provider/profile_provider.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constant/images.dart';

class TransActionWidgets extends StatelessWidget {

  TransActionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    var profileProvider =Provider.of<ProfileProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
      decoration: const BoxDecoration(
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                    color: HexColor("#25A189"),
                    borderRadius: BorderRadius.circular(2.w)
                ),
                child: SvgWidget(svg: Images.line_out,width: 7.w,height: 7.w,),
              ),
              SizedBox(width: 2.w,),
              Text("رس 120 ",style: TextStyleClass.normalStyle(fontSize: 12.sp,color: HexColor("#25A189")),),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("اضافة رصيد الي التطبيق",style: TextStyleClass.normalStyle(fontSize: 12.sp,color: HexColor("#074F4F")),),
              SizedBox(height: 2.h,),
              Text("15 March 2022, 8:20 PM",style: TextStyleClass.normalStyle(fontSize: 9.sp,color: HexColor("#BABABA")),),
            ],
          ),

        ],
      ),
    );
  }


}
