import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/images.dart';

class OrderHomeWidget extends StatelessWidget {
  const OrderHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      margin: EdgeInsets.symmetric(vertical: 2.w,horizontal: 4.w),
      padding: EdgeInsets.symmetric(vertical: 4.w,horizontal: 3.w),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: HexColor("#B983E7").withOpacity(0.5),
              spreadRadius:0.5,
              blurRadius: 8,
              offset: const Offset(0, 1), // changes position of shadow
            )
          ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.w),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 23.w,
                width: 23.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                    image: DecorationImage(
                        image: AssetImage(
                            Images.orderImage
                        ),fit: BoxFit.cover
                    )
                ),
              ),
              SizedBox(width: 2.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "رقم الطلب : 56050",style: TextStyleClass.smallBoldStyle(color: HexColor("#767575")),
                  ),
                  SizedBox(height: 2.h,),

                  Text(
                    "بيتزا",style: TextStyleClass.smallBoldStyle(color: HexColor("#2F2E2E")),
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    children: [
                      Text(
                        "الحالة : ",style: TextStyleClass.smallBoldStyle(color: HexColor("#2F2E2E")),
                      ),
                      Text(
                        "تم الطلب",style: TextStyleClass.smallBoldStyle(color: HexColor("#61A300")),
                      ),
                    ],
                  ),

                ],),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 0.4.h,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgWidget(svg: Images.bottomNavOrders,height: 6.w,width: 4.w,),

                  SizedBox(
                    width: 1.w,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "12/5/2024",style: TextStyleClass.smallStyle(color: HexColor("#A8A8A8")),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h,),

              Text(
                "12.00 رس",style: TextStyleClass.smallBoldStyle(color: HexColor("#B983E7")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
