import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/home/presentation/widgets/bottom_nav_widget.dart';

import '../../../../config/text_style.dart';
import '../widgets/order_home_widget.dart';


class OrderHomePage extends StatelessWidget {
  OrderHomePage({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: myKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "طلباتي",style: TextStyleClass.smallBoldStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: 100.w,
          child: Wrap(
            children: List.generate(10, (index) {
              return const OrderHomeWidget();
            }),
          ),
        ),
      ),
    );
  }
}
