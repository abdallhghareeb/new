import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/svg_widget.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/images.dart';

class LocAndPriceWidget extends StatelessWidget {
  const LocAndPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.w,
        padding: appPadding,
        decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(2.w),
        ),
        child: Column(
          children: [
            Align(alignment: Alignment.topRight,child: Text("الموقع",style: TextStyleClass.smallStyle(color: HexColor("#BABABA")),)),
            SizedBox(height: 2.h,),
            Container(
              width: 100.w,
              margin: customWidgetAppPadding,
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                border: Border.all(color: HexColor("#BABABA")),
                borderRadius: BorderRadius.circular(2.w)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                          hintText: "تم اختيار الموقع عبر الخريطه مسبقا",
                          hintStyle: TextStyleClass.smallStyle(color: HexColor("#BABABA")),
                          border: InputBorder.none
                      ),
                    ),
                  ),

                  SvgWidget(svg: Images.locationIcon,width: 4.w,height: 4.w),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("56.7رس",style: TextStyleClass.smallStyle(color: HexColor("#868889")),)),

                Text('المجموع',style: TextStyleClass.smallStyle(color: HexColor("#868889")),),
              ],
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("56.7رس",style: TextStyleClass.smallStyle(color: HexColor("#868889")),)),
                Text("قيمة الضريبه المضافه",style: TextStyleClass.smallStyle(color: HexColor("#868889")),),

              ],
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("56.7رس",style: TextStyleClass.smallStyle(color: HexColor("#868889")),)),

                Text("القيمة المستحقة",style: TextStyleClass.smallStyle(color: HexColor("#868889")),),
              ],
            ),
          ],
        )
    );
  }
}
