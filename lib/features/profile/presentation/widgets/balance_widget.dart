import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/colors.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';

class ProfileBalanceWidget extends StatelessWidget {
  const ProfileBalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal:5.w,vertical: 6.w),
      margin: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 0.2,
          blurRadius: 0.2,
          offset: const Offset(0, 1), // changes position of shadow
        )]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("1222 Rs",style: TextStyleClass.semiBoldStyle(color: HexColor("#F2A361")),),
          Row(
            children: [
              Text("الرصيد",style: TextStyleClass.semiBoldStyle(),),
              SizedBox(width: 4.w,),
              SvgWidget(svg: Images.profileBalance,width: 10.w,height: 10.w,),
            ],
          ),
        ],
      ),
    );
  }


}
