import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/profile/presentation/provider/wallet_provider.dart';
import '../../../../config/text_style.dart';

class TransActionWidgets extends StatelessWidget {
  Map<String,dynamic> myTransaction;
  TransActionWidgets({super.key,required this.myTransaction});

  @override
  Widget build(BuildContext context) {
    var walletProvider =Provider.of<WalletProvider>(context,listen: false);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${myTransaction['transaction']}",style: TextStyleClass.normalStyle(fontSize: 12.sp,color: HexColor("#074F4F")),),
              SizedBox(height: 2.h,),
              Text("${myTransaction['date']}",style: TextStyleClass.normalStyle(fontSize: 9.sp,color: HexColor("#BABABA")),),
            ],
          ),
          Row(
            children: [
              Text("${myTransaction['quantity']} ",style: TextStyleClass.normalStyle(fontSize: 12.sp,color: HexColor("#25A189")),),
              SizedBox(width: 2.w,),
              walletProvider.transactionIcon(myTransactions: myTransaction),
            ],
          ),
        ],
      ),
    );
  }


}
