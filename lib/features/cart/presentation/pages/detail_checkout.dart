import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import 'package:untitled1/core/widget/radio_widget.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/core/widget/text_field.dart';
import 'package:untitled1/features/cart/presentation/widgets/address_and_time_widget.dart';
import 'package:untitled1/features/cart/presentation/widgets/list_cart_payment_widget.dart';
import 'package:untitled1/features/cart/presentation/widgets/price_widget.dart';
import '../../../../core/constants/images.dart';
import '../provider/cart_provider.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/list_cart_item.dart';
import '../widgets/list_coupon_widget.dart';

class DetailsCartHomeScreen extends StatelessWidget {
  DetailsCartHomeScreen({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context,listen: false);
    return Scaffold(
        key: myKey,
        body: SizedBox(
          width: 100.w,
          height: 100.h,
          child: Column(
            children: [
              TaskAppBarWidget( height: 13.h,text: "إتمام الشراء",),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3.h,),
                        const ListCartItemWidget(need: false,),
                        SizedBox(height: 1.h,),
                        const AddressAndTimeWidget(),
                        SizedBox(height: 2.h,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          height: 0.1.h,
                          color: Colors.grey,
                          width: 100.w,
                        ),
                        SizedBox(height: 2.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text("طريقة الدفع",style: TextStyleClass.smallStyle(),),
                        ),
                        const ListCartPaymentWidget(),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          height: 0.1.h,
                          color: Colors.grey,
                          width: 100.w,
                        ),
                        SizedBox(height: 2.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text("الكوبونات المتاحة",style: TextStyleClass.smallStyle(),),
                        ),
                        SizedBox(height: 2.h,),
                        const ListCouponWidget(),
                        SizedBox(height: 1.h,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          height: 0.1.h,
                          color: Colors.grey,
                          width: 100.w,
                        ),
                        SizedBox(height: 2.h,),
                        const PriceWidget(),
                      ],
                    )),
              ),
              ButtonWidget(textOfButton: "التالي",colorOfButton: HexColor("#581D8A"),),

            ],
          ),
        )
    );
  }
}
