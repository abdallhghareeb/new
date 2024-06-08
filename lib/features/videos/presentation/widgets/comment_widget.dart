import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/widget/svg_widget.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              SizedBox(width: 3.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text("اسم المستخدم",style: TextStyleClass.tinyBoldStyle(color: HexColor("#264653")),),
                    SizedBox(width: 3.w,),
                    Text("الوقت",style: TextStyleClass.tinyStyle(color: HexColor("#BABABA"),)),
                  ],),
                  SizedBox(height: 1.h,),
                  Text("التعليق",style: TextStyleClass.tinyStyle(color: HexColor("#BABABA"),)),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SvgWidget(svg: Images.heartOutLinedIcon,width: 4.w,height: 4.w,),
              SizedBox(height: 0.5.h,),
              Text("9999",style: TextStyleClass.tinyStyle(color: HexColor("#86878B")),),
            ],
          ),
        ],
      ),
    );
  }
}
