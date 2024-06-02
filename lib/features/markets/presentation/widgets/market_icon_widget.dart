import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';
import '../../data/models/remote_markets_model.dart';
import '../../domain/entities/market_entity.dart';

class MarketIconAndName extends StatelessWidget {
  MarketEntity marketData  ;
  MarketIconAndName({super.key,required this.marketData});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgWidget(svg: Images.messageFillIcon,height: 7.w,width: 7.w,),
            SizedBox(width: 2.w,),
            SvgWidget(svg: Images.phoneFill,height: 7.w,width: 7.w,)
          ],
        ),
        Column(
          children: [
            Container(
              width: 25.w,
              height: 25.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                image:  DecorationImage(
                  image: NetworkImage(marketData.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Text(marketData.name,style:TextStyleClass.textButtonStyle(color: HexColor("#25A189")),),
            SizedBox(height: 0.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${marketData.id}",style:TextStyleClass.textButtonStyle(color: Colors.black),),
                SizedBox(width: 2.w,),
                SvgWidget(svg: Images.pinAltIcon,height: 7.w,width: 7.w,),
              ],
            ),
          ],
        ),
        Column(
          children: [
            SvgWidget(svg: Images.checkIcon,height: 5.w,width: 5.w,),
            Text("موثق",style:TextStyleClass.smallDecorationStyle(color: Colors.black),),
          ],),
      ],
    );
  }
}
