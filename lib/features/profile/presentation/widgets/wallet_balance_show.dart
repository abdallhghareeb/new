import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/images.dart';

class WalletBalanceShow extends StatelessWidget {
  const WalletBalanceShow({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        SvgWidget(svg: Images.wallet_icon,width: 95.w,height: 19.h,),
        Positioned(
          top: 10.w,
          right: 18.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("الرصيد",style: TextStyleClass.semiBoldStyle(color: Colors.white),),
              SizedBox(height: 1.5.h,),
              Text("1.234 رس",style: TextStyleClass.semiBoldStyle(color: Colors.white),),
            ],
          ),
        )
      ],
    );
  }


}
