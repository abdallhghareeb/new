import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/models/abstract_model.dart';


class TestWidget extends StatelessWidget {
  AbstractClass abstractModel;
  TestWidget( {super.key, required this.abstractModel});
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Container(
        width: 46.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.w),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Column(
          children: [
            SizedBox(
              width: 100.w,
              height: 15.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2.w),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(2.w), // Image radius
                  child: Image(
                    image:  AssetImage(
                      abstractModel.image,
                    ),
                    fit: BoxFit.cover,
                    height: 20.h,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.h,vertical: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(abstractModel.name,
                    // "${marketData.name}",
                    textAlign: TextAlign.right,
                    style: TextStyleClass.normalStyle(fontSize: 8.sp),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                  Text(
                    abstractModel.description,
                    // marketData.name,
                    textAlign: TextAlign.right,
                    style: TextStyleClass.smallStyle(
                      color: HexColor("#878787"),

                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "    ر.س",
                        textAlign: TextAlign.right,
                        style: TextStyleClass.smallStyle(
                          color: MyColor.firstColor,
                        ),
                      ),
                      Text(
                        abstractModel.price,
                        // "${marketData.price}",
                        textAlign: TextAlign.right,
                        style: TextStyleClass.smallStyle(
                          color: MyColor.firstColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
