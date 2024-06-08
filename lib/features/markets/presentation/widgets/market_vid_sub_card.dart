import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/svg_widget.dart';

import '../../../../core/constants/images.dart';

class MarketVideosWidget extends StatelessWidget {
  const MarketVideosWidget( {super.key});
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 29.w,
      height: 18.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.w),
        image: DecorationImage(image: AssetImage(Images.vidImage),fit: BoxFit.cover)
      ),
      child: Padding(
        padding: EdgeInsets.all(1.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgWidget(svg: Images.videoFile,color: Colors.white,width: 5.w,height:5.w),
            SizedBox(width: 1.w,),
            Text("2000",style: TextStyleClass.smallBoldStyle(color: Colors.white),),
          ],
        ),
      ),

    );
  }
}
