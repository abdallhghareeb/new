import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constants/colors.dart';
import 'package:untitled1/core/widget/checkbox_widget.dart';
import 'package:untitled1/core/widget/svg_widget.dart';
import '../../../../config/text_style.dart';
import '../../../../core/constants/images.dart';
import '../provider/location_provider.dart';

class MyLocationWidget extends StatelessWidget {
  Map<String,dynamic> locations ;
  int index ;
  MyLocationWidget({super.key,required this.locations,required this.index});

  @override
  Widget build(BuildContext context) {
    var locationProvider = Provider.of<LocationProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 5.w),
      margin: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
          color: Colors.white,
          boxShadow: [myBoxShadow]
      ),
      child: Row(
        children: [
          CheckBoxWidget(check: true, onChange: (s){}),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${locations['address_name']}",style: TextStyleClass.normalBoldStyle(),),
                    SizedBox(height: 0.5.h,),
                    Text("${locations['fullAddress']}",style: TextStyleClass.normalBoldStyle(),),
                    SizedBox(height: 0.5.h,),
                    Text("${locations['lng']}",style: TextStyleClass.normalBoldStyle(),),
                    SizedBox(height: 0.5.h,),
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Container(
                    height: 5.h,
                    width: 33.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2.w),bottomRight: Radius.circular(2.w), ),
                        color: Colors.white,
                        boxShadow: [myBoxShadow]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgWidget(svg: Images.editPen,width: 7.w,height: 7.w,),
                        SizedBox(width: 2.w,),
                        Text("تعديل",style: TextStyleClass.normalBoldStyle(color: HexColor("#264653")),),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  GestureDetector(
                    onTap: (){
                      locationProvider.deleteFromMyLocations(index: index);
                    },
                    child: Container(
                      height: 5.h,
                      width: 33.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2.w),bottomRight: Radius.circular(2.w), ),
                          color: Colors.white,
                          boxShadow: [
                            myBoxShadow
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgWidget(svg: Images.deletePen,width: 6.w,height: 6.w,),
                          SizedBox(width: 2.w,),
                          Text("حذف",style: TextStyleClass.normalBoldStyle(color: Colors.red),),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }


}
