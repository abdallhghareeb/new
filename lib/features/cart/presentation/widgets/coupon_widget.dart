import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constants/images.dart';
import 'package:untitled1/core/widget/radio_widget.dart';
import 'package:untitled1/core/widget/svg_widget.dart';

import '../provider/cart_provider.dart';

class CouponWidget extends StatelessWidget {
  const CouponWidget({super.key, required this.coupon, required this.index});
  final String coupon;
  final int index;

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);

    return GestureDetector(
      onTap: (){
        cartProvider.changeCouponIndex(couponIndex: index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        decoration: BoxDecoration(
          border: Border.all(color: cartProvider.borderOfCoupon(couponIndex: index)),
          borderRadius: BorderRadius.circular(1.w)
        ),
        child: Row(
          children: [
            SvgWidget(svg: Images.discountIcon,height: 4.w,width: 4.w,),
            SizedBox(width: 3.w,),
            Text(coupon,style: TextStyleClass.tinyStyle(color: HexColor("#581D8A")),),

          ],
        ),
      ),
    );
  }
}
