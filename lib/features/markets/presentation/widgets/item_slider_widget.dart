import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/core/constant/images.dart';
import 'package:untitled1/features/banners/presentation/provider/banner_provider.dart';
import 'package:untitled1/features/markets/presentation/provider/market_provider.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: appPadding,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 23.h,
                autoPlayInterval: const Duration(seconds: 10),
                viewportFraction: 1,
                enableInfiniteScroll: true,
                autoPlay: true,
                onPageChanged: (i, p) {
                  // MarketProvider.changeIndex(i);
                }),
            items: List.generate(5, (i) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    SizedBox(height: 1.h),
                    Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.transparent),
                      child: Column(
                        children: [
                          Container(
                            width: 100.w,
                            height: 22.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image:  DecorationImage(
                                image: AssetImage(Images.italyImage),
                                fit: BoxFit.cover,
                              ),
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          SizedBox(height: 1.h),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  5,
                      (i) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: i == i
                          ? Container(
                          height: 3.w,
                          width: 3.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff25A189)),
                              color: const Color(0xff25A189),
                              borderRadius: BorderRadius.circular(2.w)))
                          : Container(
                          height: 3.w,
                          width: 3.w,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(
                                  color: Colors.grey.shade200, width: 2.0),
                              borderRadius: BorderRadius.circular(2.w)))))),
        ],
      ),
    );
  }
}
