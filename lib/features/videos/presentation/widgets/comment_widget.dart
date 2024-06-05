import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/text_style.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/images.dart';
import '../../../../core/widget/svg_widget.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SvgWidget(svg: Images.heartOutLinedIcon,width: 4.w,height: 4.w,),
              SizedBox(height: 0.5.h,),
              Text("9999",style: TextStyleClass.tinyStyle(color: HexColor("#86878B")),),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(children: [
                    Text("الوقت",style: TextStyleClass.tinyStyle(color: HexColor("#BABABA"),)),
                    SizedBox(width: 3.w,),
                    Text("اسم المستخدم",style: TextStyleClass.tinyBoldStyle(color: HexColor("#264653")),),
                  ],),
                  SizedBox(height: 1.h,),
                  Text("التعليق",style: TextStyleClass.tinyStyle(color: HexColor("#BABABA"),)),
                ],
              ),
              SizedBox(width: 3.w,),

              Container(
                width: 10.w,
                height: 10.w,
                padding: EdgeInsets.all(5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
                    image: const DecorationImage(
                        image: AssetImage(Images.profileImage),fit: BoxFit.cover
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
