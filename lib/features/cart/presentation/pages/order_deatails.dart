import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/markets/presentation/provider/market_provider.dart';
import '../../../../core/constant/images.dart';


class MarketItemHome extends StatelessWidget {
  MarketItemHome({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var marketProvider =Provider.of<MarketProvider>(context);

    return Consumer(builder: (context, value, child) => Scaffold(
        key: myKey,
        appBar: AppBar(
          centerTitle: true,
          title: Text("تفاصيل الطلب",style: TextStyleClass.semiBoldStyle(),),
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: SizedBox(
            width: 100.w,
            height: 100.h,
            child:  SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 1.h,),
                  SizedBox(height: 3.h,),
                  SizedBox(height: 3.h,),
                  ButtonWidget(textOfButton: "اكمال الطلب", colorOfButton:HexColor("#264653")),
                ],
              ),
            ))),);
  }
}
