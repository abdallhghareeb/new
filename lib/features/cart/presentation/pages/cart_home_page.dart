import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import 'package:untitled1/features/cart/presentation/provider/cart_provider.dart';

import '../../../../core/helper_function/navigation.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/cart_item_card_widget.dart';
import '../widgets/list_cart_item.dart';
import 'detail_checkout.dart';

class CartHomeScreen extends StatelessWidget {
  CartHomeScreen({super.key});

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
              TaskAppBarWidget( height: 18.h,text: "عربة التسوق",),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 3.h,),
                      const ListCartItemWidget(need: true,),
                    ],
                )),
              ),
              ButtonWidget(buttonFunction: (){
                cartProvider.goTo(page: DetailsCartHomeScreen());
              },textOfButton: "التالي",colorOfButton: HexColor("#581D8A"),),

            ],
          ),
    )
    );
  }
}
