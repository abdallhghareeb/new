import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';

import '../../../../config/text_style.dart';
import '../../../../core/constant/images.dart';

class UserButtonActionsWidget extends StatelessWidget {
  const UserButtonActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "اسم الحساب",
              style: TextStyleClass.smallBoldStyle(color: Colors.white),
            ),
            SizedBox(height: 2.h,),
            Text(
              "العنوان الخاص بالمتجر",
              style: TextStyleClass.tinyBoldStyle(color: Colors.white),
            ),
            SizedBox(height: 1.5.h,),
          ],
        ),
        SizedBox(width: 2.w,),
        Column(
          children: [
            SizedBox(
              height: 8.h,
              child: Stack(
                children: [
                  Container(
                    width: 13.w,
                    height: 13.w,
                    padding: EdgeInsets.all(5.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.w),
                        border: Border.all(color: Colors.white,width: 0.3.w),
                        image: const DecorationImage(
                            image: AssetImage(Images.profileImage),fit: BoxFit.cover
                        )
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    left:0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 3.w,
                      backgroundColor: HexColor("#25A189"),
                      child: Center(
                        child:Icon(Icons.check,color: Colors.white,size: 4.w,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            SvgWidget(svg: Images.videoLike,width: 7.w,height: 7.w,),
            SizedBox(height: 1.h,),
            Text(
              "250,5K",
              style: TextStyleClass.tinyBoldStyle(color: Colors.white),
            ),
            SizedBox(height: 1.h,),
            SvgWidget(svg: Images.videoComments,width: 7.w,height: 7.w,),
            SizedBox(height: 1.h,),
            Text(
              "200",
              style: TextStyleClass.tinyBoldStyle(color: Colors.white),
            ),
            SizedBox(height: 1.h,),
            SvgWidget(svg: Images.videoStar,width: 7.w,height: 7.w,),
            SizedBox(height: 1.h,),
            Text(
              "4,8",
              style: TextStyleClass.tinyBoldStyle(color: Colors.white),
            ),
            SizedBox(height: 1.h,),
            SvgWidget(svg: Images.videoShare,width: 7.w,height: 7.w,),
            SizedBox(height: 1.h,),
            Text(
              "19.2K",
              style: TextStyleClass.tinyBoldStyle(color: Colors.white),
            ),
            SizedBox(height: 3.h,),
            SvgWidget(svg: Images.videoLocation,width: 11.w,height: 11.w,),
          ],
        ),
      ],
    );
  }
}
