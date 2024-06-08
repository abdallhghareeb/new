import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import 'package:untitled1/features/orders/presentation/widgets/change_quantity_widget.dart';
import '../widgets/loc_price_widget.dart';
import '../widgets/payment_widget.dart';

class OrderDeatailsHome extends StatelessWidget {
  OrderDeatailsHome({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Scaffold(
          key: myKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "تفاصيل الطلب",
              style: TextStyleClass.normalBoldStyle(),
            ),
          ),
          body: SizedBox(
              width: 100.w,
              height: 100.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    ChangeQuantityWidget(),
                    SizedBox(
                      height: 3.h,
                    ),
                    LocAndPriceWidget(),
                    Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.all(5.w),
                        child: Text(
                          "طرق الدفع",
                          style: TextStyleClass.normalBoldStyle(
                              color: Colors.black),
                        )),
                    SizedBox(
                      height: 1.h,
                    ),
                    PaymentWidget(),
                    SizedBox(
                      height: 3.h,
                    ),

                  ],
                ),
              )),floatingActionButton: ButtonWidget(
          textOfButton: "اكمال الطلب",
          colorOfButton: HexColor("#264653")),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,),
    );
  }
}
