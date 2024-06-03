import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import 'package:untitled1/features/profile/presentation/widgets/balance_widget.dart';
import 'package:untitled1/features/profile/presentation/widgets/list_profile_widgets.dart';
import '../../../../core/constant/constant.dart';
import '../../../home/presentation/widgets/bottom_nav_widget.dart';
import '../widgets/list_of_transation.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/wallet_balance_show.dart';


class WalletMainPage extends StatelessWidget {
  WalletMainPage({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: myKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("المحفظة",style: TextStyleClass.normalBoldStyle(),),
      ),
      body:  Container(
          width: 100.w,
          height: 100.h,
          padding: appPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 3.h,),
                WalletBalanceShow(),
                SizedBox(height: 3.h,),
                ButtonWidget(textOfButton: "اضافة رصيد", colorOfButton: HexColor("#264653")),
                SizedBox(height: 1.h,),
                Container(padding: EdgeInsets.symmetric(horizontal: 2.w),alignment: Alignment.topRight,child: Text(" سجل الرصيد",style: TextStyleClass.normalStyle(fontSize: 12.sp,color: HexColor("#BABABA")),)),
                SizedBox(height: 2.h,),
                ListOfTransactionWidgets(),
              ],
            ),
          )),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
