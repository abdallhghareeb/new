import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constants/colors.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/core/widget/text_field.dart';
import 'package:untitled1/features/login/presentation/provider/login_provider.dart';
import '../../../../core/constants/images.dart';
import 'otp_page.dart';

class PhoneLoginPage extends StatelessWidget {
  const PhoneLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Container(
              width: 35.w,
              height: 35.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Images.logo),fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: TextFieldWidget(
                borderRadius:3.w,
                controller: TextEditingController(),
                contentPadding: EdgeInsets.symmetric(vertical: 5.w),
                suffix: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 14.w,
                      width: 0.7.w,
                      color: HexColor("#E9C469"),
                    ),
                    SizedBox(width: 2.w,),
                    SvgWidget(svg:Images.countryFlag,width: 6.w,height: 6.w,),
                    SizedBox(width: 2.w,),
                  ],
                ),
        
                titleWidget: Text("رقم الهاتف",style: TextStyleClass.smallStyle(color: HexColor("#9E9E9E")),),
              ),
            ),
            SizedBox(height: 7.h,),
            ButtonWidget(buttonFunction: (){
              loginProvider.goToPages(className: OtpPage());
            },textOfButton:"دخول",
              width: 55.w,height:7.h,style: TextStyleClass.headBoldStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
