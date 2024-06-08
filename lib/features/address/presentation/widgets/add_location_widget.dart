import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';

import '../../../../core/widget/buttonWidget.dart';
import '../../../../core/widget/text_field.dart';

class AddLocationWidget extends StatelessWidget {
  const AddLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children:[

          Container(
            padding:  EdgeInsets.symmetric(horizontal:6.w,vertical: 1.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.5.w)
            ),
            child: TextFieldWidget(

              controller: TextEditingController(),
              titleWidget: Column(
                children: [
                  Text("عنوان الزياره (معالم مميزه للعنوان)",style: TextStyleClass.normalStyle(color: HexColor("#72757B")),),
                  SizedBox(height: 1.5.h,),
                ],
              ),

            ),
          ),
          ButtonWidget(textOfButton: "متابعة",),
        ],
      ),
    );
  }
}
