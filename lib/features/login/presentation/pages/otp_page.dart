import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import 'package:untitled1/core/widget/otp_widget.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../core/constants/images.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                "التحقق من الرقم",
                style: TextStyleClass.headStyle(color: HexColor("#E97053")),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Center(
                child: SvgWidget(svg: Images.otpHand),
              ),
              SizedBox(
                height: 7.h,
              ),
              Row(children: [
                Text(
                  "الرقم المرسل",
                  style:
                      TextStyleClass.smallBoldStyle(color: HexColor("#9E9E9E")),
                ),
              ]),
              SizedBox(
                height: 1.h,
              ),
              const OTPWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "لم استلم الرمز؟",
                    style: TextStyleClass.smallBoldStyle(
                        color: HexColor("#9E9E9E")),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    "ارسال الرقم مره اخرى",
                    style: TextStyleClass.smallBoldStyle(
                        color: HexColor("#264653")),
                  ),
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              ButtonWidget(
                textOfButton: "دخول",
                width: 55.w,
                height: 7.h,
                style: TextStyleClass.headBoldStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
