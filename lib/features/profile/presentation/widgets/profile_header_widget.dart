import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/colors.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/login/presentation/pages/phone_login_page.dart';

import '../../../../config/text_style.dart';
import '../../../../core/constant/constant.dart';
import '../provider/profile_provider.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var profileProvider = Provider.of<ProfileProvider>(context,listen: false);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              width: 20.w,
              padding:EdgeInsets.all(2.w) ,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(2.w)
              ),
              child:  Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Text("خروج",style: TextStyleClass.smallStyle(color: Colors.white),),
                SizedBox(width: 2.w,),

                SvgWidget(svg: Images.profileExit,width: 4.w,height: 4.w,),
              ],),
            ),
            SizedBox(height: 2.h,),
            InkWell(
              onTap: (){
                profileProvider.goToPages(className: PhoneLoginPage());
              },
              child: Container(
                width: 20.w,
                padding:EdgeInsets.all(2.w) ,
                decoration: BoxDecoration(
                    color: MyColor.firstColor,
                    borderRadius: BorderRadius.circular(2.w)
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("تعديل",style: TextStyleClass.smallStyle(color: Colors.white),),
                  SizedBox(width: 2.w,),
                  SvgWidget(svg: Images.profileEdit,width: 4.w,height: 4.w,),
                ],),
              ),
            ),
          ],
        ),
        Row(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("أحمد محمد",style: TextStyleClass.headStyle(),),
                SizedBox(height: 1.h,),
                Row(children: [
                  Text("معتمد",style: TextStyleClass.semiStyle(color: MyColor.firstColor),),
                  SizedBox(width: 3.w,),
                  SvgWidget(svg: Images.profileFixed,width: 6.w,height: 6.w,),
                ],)
              ],
            ),
            SizedBox(width: 3.w,),
            Container(
              width: 18.w,
              height: 18.w,
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.w),
                  border: Border.all(color: HexColor("#E97053"),width: 3),
                  image: const DecorationImage(
                      image: AssetImage(Images.profileImage),fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(width: 4.w,),
          ],
        ),
      ],
    );
  }


}
