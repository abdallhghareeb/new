import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/radio_widget.dart';

import '../provider/cart_provider.dart';

class CartPaymentWidget extends StatelessWidget {
  const CartPaymentWidget({super.key, required this.payMethod, required this.index});
  final String payMethod;
  final int index;

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);

    return GestureDetector(
      onTap: (){
        cartProvider.changeIndex(paymentSelectedIndex: index);
      },
      child: Row(
        children: [
          RadioWidget(selected: cartProvider.selectPayment(paymentSelectedIndex: index),myColor: HexColor("#581D8A"),),
          SizedBox(width: 3.w,),
          Text(payMethod,style: TextStyleClass.tinyStyle(),),

        ],
      ),
    );
  }
}
