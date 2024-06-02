import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/core/widget/svg_widget.dart';

import '../../../../config/text_style.dart';
import '../../../../core/constant/constant.dart';
import '../provider/market_provider.dart';

class ImageOrVidWidget extends StatelessWidget {
  const ImageOrVidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var marketProvider =Provider.of<MarketProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: GestureDetector(
          onTap: (){
            marketProvider.changeBetweenVidAndImg();
          },
          child: Container(
            color: marketProvider.backGround(isVid: true),
            padding: customWidgetAppPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("فيديوهات",style:TextStyleClass.textButtonStyle(color: marketProvider.textColor(isVid: true))),
                SizedBox(width: 3.w,),
                SvgWidget(svg: Images.subtractIcon,height: 6.w,width: 6.w,color: marketProvider.iconColor(isVid: true),),

              ],
            ),
          ),
        )),
        Expanded(child: GestureDetector(
          onTap: (){
            marketProvider.changeBetweenVidAndImg();
          },
          child: Container(
            color: marketProvider.backGround(),
            padding: customWidgetAppPadding,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("الصور",style:TextStyleClass.textButtonStyle(color: marketProvider.textColor()),),
                SizedBox(width: 3.w,),
                SvgWidget(svg: Images.subtractIcon,height: 6.w,width: 6.w,color: marketProvider.iconColor(),),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
