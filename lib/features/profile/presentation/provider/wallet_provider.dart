import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constants/colors.dart';
import 'dart:math' as math;
import '../../../../core/constants/images.dart';
import '../../../../core/widget/svg_widget.dart';

class WalletProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> myTransactions = [
    {
      "transaction": "اضافة رصيد الي التطبيق",
      "date": "15 March 2022, 8:20 PM",
      "quantity":"120 رس",
      "charge":true,
    },
    {
      "transaction": "شراء عبر التطبيق",
      "date": "15 March 2022, 8:40 PM",
      "quantity":"100 رس",
      "charge":false,
    },

  ];

  Color iconColor({required Map<String, dynamic> myTransactions}){
   if(myTransactions['charge'] ==true){
     return  MyColor.firstColor;
   }else{
     return HexColor("#E97053");
   }
  }

  Widget transactionIcon({required Map<String, dynamic> myTransactions}){
    if(myTransactions['charge']==true){
      return Container(
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
            color: iconColor(myTransactions: myTransactions),
            borderRadius: BorderRadius.circular(2.w)
        ),
        child: SvgWidget(svg: Images.line_out,width: 7.w,height: 7.w,),
      );
    }
    return Transform.rotate(
      alignment: Alignment.center,
      angle: 180 * math.pi / 180,
      child: Container(
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
            color: iconColor(myTransactions: myTransactions),
            borderRadius: BorderRadius.circular(2.w)
        ),
        child: SvgWidget(svg: Images.line_out,width: 7.w,height: 7.w,),
      ),
    );
  }


}
