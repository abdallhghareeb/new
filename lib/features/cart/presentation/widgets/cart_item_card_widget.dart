import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/cart/presentation/provider/cart_provider.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/images.dart';

class CartItemCardWidget extends StatelessWidget {
  const CartItemCardWidget({super.key, required this.need});
  final bool need ;

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);
    return Container(
      height: cartProvider.heightOfWidget(need: need),
      margin: EdgeInsets.symmetric(vertical: 0.5.h,horizontal: 4.w),
      padding: EdgeInsets.only(top: 4.w,right: 2.w,left: 2.w),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 23.w,
                width: 23.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                    image: const DecorationImage(
                        image: AssetImage(
                            Images.burgerPng
                        ),fit: BoxFit.cover
                    )
                ),
              ),
              SizedBox(width: 3.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "برجر الوحش",style: TextStyleClass.smallBoldStyle(),
                  ),
                  SizedBox(height: 1.h,),
                  SizedBox(
                    width: 40.w,
                    child: Text(
                      "190 جرام لحم, طماطم , بصل,صوص ",maxLines: 2,style: TextStyleClass.smallBoldStyle(color: HexColor("#BABABA")),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  cartProvider.quantityWidget(need: need),

                ],),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.w),
            child: Text(
              "12.00 رس",style: TextStyleClass.normalBoldStyle(color: HexColor("#B983E7")),
            ),
          ),
        ],
      ),
    );
  }
}
