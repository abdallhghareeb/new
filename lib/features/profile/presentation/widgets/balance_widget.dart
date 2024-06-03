import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/colors.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/profile/presentation/pages/wallet_main_page.dart';
import '../../../../config/text_style.dart';
import '../provider/profile_provider.dart';

class ProfileBalanceWidget extends StatelessWidget {
  const ProfileBalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var profileProvider =Provider.of<ProfileProvider>(context);

    return GestureDetector(
      onTap: (){
        profileProvider.goToPages(className:WalletMainPage());
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:5.w,vertical: 4.w),
        margin: EdgeInsets.only(left: 0.4.w,right:3.w),
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
                SvgWidget(svg: Images.profileBalance,width: 9.w,height: 9.w,),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
