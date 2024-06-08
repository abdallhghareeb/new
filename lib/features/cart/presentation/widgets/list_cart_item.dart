import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'cart_item_card_widget.dart';

class ListCartItemWidget extends StatelessWidget {
  const ListCartItemWidget({super.key, required this.need});
  final bool need;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 1.h,
      children: List.generate(2, (index) =>  CartItemCardWidget(need:need,)),
    );
  }
}
