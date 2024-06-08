import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/text_style.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/widget/svg_widget.dart';
import '../../../../core/widget/text_field.dart';
import '../provider/cart_provider.dart';

class AddressAndTimeWidget extends StatelessWidget {
  const AddressAndTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context,listen: false);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        children: [
          TextFieldWidget(controller: cartProvider.myAddress,hintStyle: TextStyleClass.smallStyle(),suffix: Icon(Icons.arrow_forward_ios,size: 18.sp),hintText: "عنواني",),
          Row(
            children: [
              Expanded(child: TextFieldWidget(controller: cartProvider.rawNumberController,keyboardType: TextInputType.number,titleWidget:Text(
                "رقم الصالة",style: TextStyleClass.smallStyle(),
              ))),
              SizedBox(width: 5.w,),
              Expanded(child: TextFieldWidget(controller: cartProvider.seatNumberController,keyboardType: TextInputType.number,titleWidget:Text(
                "رقم الترابيزة",style: TextStyleClass.smallStyle(),
              ))),
            ],
          ),
          SizedBox(height: 2.h,),
          Row(
            children: [
              SvgWidget(svg: Images.scheduleOrder,height: 8.w,width: 8.w,),
              SizedBox(width: 2.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "موعد الطلب",style: TextStyleClass.smallStyle(),
                  ),
                  Text(
                    "2/2/2024-2:00AM",style: TextStyleClass.smallStyle(),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 2.h,),
          TextFieldWidget(controller: cartProvider.commentController,hintStyle: TextStyleClass.smallStyle(),suffix: Icon(Icons.keyboard_arrow_down_outlined,size: 30.sp,weight: 0.1,),hintText: "أضف تعليق",),

        ],
      ),
    );
  }
}
