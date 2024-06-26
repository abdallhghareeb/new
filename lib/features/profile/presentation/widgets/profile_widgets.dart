import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/profile/presentation/provider/profile_provider.dart';
import '../../../../config/text_style.dart';

class ProfileWidgets extends StatelessWidget {
  Map<String,dynamic> myWidgets = {};
  ProfileWidgets({super.key,required this.myWidgets});

  @override
  Widget build(BuildContext context) {
    var profileProvider = Provider.of<ProfileProvider>(context);
    return GestureDetector(
      onTap: (){
        profileProvider.goToPages(className: myWidgets['route']);
      },
      child: Container(
        width: 100.w,
        padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(

                children: [
                  Row(
                    children: [
                      SvgWidget(svg:myWidgets['svg'] ,width: 6.w,height: 6.w,),
                      SizedBox(width:5.w,),
                      Text(myWidgets['text'],style: TextStyleClass.normalStyle(fontSize: 11.sp,color: HexColor("#4F5B67")),),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  myWidgets['text']=="حذف الحساب" ? const SizedBox(): Container(width: 100.w,height: 0.2.w,color: Colors.grey,),
                ],
              ),
            ),
            SizedBox(width: 1.w,),
            Icon(Icons.arrow_forward_ios,color: HexColor("#4F5B67"),size: 5.w,),
          ],
        ),
      ),
    );
  }


}
