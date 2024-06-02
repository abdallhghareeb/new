import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import 'package:untitled1/features/markets/presentation/provider/market_provider.dart';
import '../../../../core/constant/images.dart';
import '../widgets/details_of_item_widget.dart';
import '../widgets/item_slider_widget.dart';

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
          title: Text("اسم المنتج",style: TextStyleClass.semiBoldStyle(),),
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Text("22 k",style: TextStyleClass.smallBoldStyle(color: HexColor("#25A189")),),
            SizedBox(width: 1.w,),
            SvgWidget(svg: Images.viewsIcon),
            SizedBox(width: 3.w,),
          ],
        ),
        body: SizedBox(
            width: 100.w,
            height: 100.h,
            child:  SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 1.h,),
                  const ItemSliderWidget(),
                  SizedBox(height: 3.h,),
                  const DetailsOfItemWidget(),
                  SizedBox(height: 3.h,),
                  ButtonWidget(textOfButton: "أضف إلي السلة", colorOfButton:HexColor("#264653")),
                ],
              ),
            ))),);
  }
}
