import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';

class DetailsOfItemWidget extends StatelessWidget {
  const DetailsOfItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: appPadding,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [

              Expanded(
              child:Text("بيتزا خضار مع اضافة صوصات ",style: TextStyleClass.semiBoldStyle(),),
              ),
              Row(
                children: [
                  Text("3.2رس",style: TextStyleClass.semiBoldStyle(color: MyColor.firstColor),),
                  Padding(padding: const EdgeInsets.only(top: 20),child: Text("5.5رس",style: TextStyleClass.smallLineThroughDecorationStyle(color: HexColor("#E97053")),)),
                ],),
            ],
          ),
          SizedBox(height: 2.h,),
          Text("وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج  وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج وصف عن المنتج ",style: TextStyleClass.normalStyle(),),
          SizedBox(height: 2.h,),
        ],
      ),
    );
  }
}
