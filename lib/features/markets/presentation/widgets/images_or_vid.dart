import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/constants/images.dart';
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
            marketProvider.goToPhoto();
          },
          child: Container(
            color: marketProvider.backGround(isVid: false),
            padding: customWidgetAppPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgWidget(svg: Images.imageIcon,height: 6.w,width: 6.w,color: marketProvider.iconColor(isVid:false ),),
                SizedBox(width: 3.w,),
                Text("الصور",style:TextStyleClass.textButtonStyle(color: marketProvider.textColor(isVid: false)),),
              ],
            ),
          ),
        )),
        Expanded(child: GestureDetector(
          onTap: (){
            marketProvider.goToVideos();
          },
          child: Container(
            color: marketProvider.backGround(isVid: true),
            padding: customWidgetAppPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgWidget(svg: Images.subtractIcon,height: 6.w,width: 6.w,color: marketProvider.iconColor(isVid: true),),
                SizedBox(width: 3.w,),
                Text("فيديوهات",style:TextStyleClass.textButtonStyle(color: marketProvider.textColor(isVid: true))),
              ],
            ),
          ),
        )),
      ],
    );
  }


}
