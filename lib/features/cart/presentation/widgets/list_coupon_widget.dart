import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/cart/presentation/widgets/cart_payment_widget.dart';
import 'package:untitled1/features/cart/presentation/widgets/coupon_widget.dart';

import '../provider/cart_provider.dart';

class ListCouponWidget extends StatelessWidget {
  const ListCouponWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context,listen: false);

    return SizedBox(
      height: 3.h,
      child: ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CouponWidget(coupon: cartProvider.couponsList[index], index: index),
          separatorBuilder: (context, index) => SizedBox(width: 4.w,),
          itemCount: cartProvider.couponsList.length),
    );
  }
}
