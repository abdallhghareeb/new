import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/core/widget/text_field.dart';
import 'package:untitled1/features/videos/presentation/provider/comment_provider.dart';
import 'package:untitled1/features/videos/presentation/widgets/comment_widget.dart';

import '../../../../config/text_style.dart';
import '../../../../core/constant/images.dart';

class ListCommentWidget extends StatelessWidget {
  const ListCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var commentProvider=Provider.of<CommentProvider>(context);
    return SizedBox(
      width: 100.w,
      height: 60.h,
      child: Column(
        children: [
          SizedBox(height: 2.h,),
          Text("عدد التعليقات",style: TextStyleClass.normalBoldStyle(),),
          SizedBox(height: 3.h,),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 4.w,right: 3.w),
              itemBuilder: (context, index) {
                return CommentWidget();
              },
              itemCount: 7,
              separatorBuilder: (context, index) => SizedBox(height: 2.h,),
            ),
          ),
          Container(
            color: HexColor("#25A189"),
            height: 0.2.h,
            width: 100.w,
          ),
          TextFieldWidget(
            controller: commentProvider.commentController,
            elevation: 0,
            borderColor: Colors.transparent,

            suffix: Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                SvgWidget(svg: Images.adSignStrokeIcon,width: 5.w,height: 5.w,),
                SizedBox(
                  width: 5.w,
                ),
                SvgWidget(svg: Images.emojiStrokeIcon,width: 5.w,height: 5.w,),

              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
            hintText: "اكتب تعليق",
          ),
        ],
      ),
    );
  }
}
