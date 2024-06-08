import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/features/banners/presentation/provider/banner_provider.dart';
import '../../../../core/constants/constants.dart';

class BannerRestaurantWidget extends StatelessWidget {
  const BannerRestaurantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var bannersProvider = Provider.of<BannersProvider>(context);
    return Container(
      width: 100.w,
      padding: appPadding,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(2.w)),
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
                  bannersProvider.changeIndex(i);
                }),
            items: List.generate(bannersProvider.bannersList.length, (i) {
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
                                image: NetworkImage(bannersProvider.bannersList[i].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 2.h),
                                child: Text(
                                  bannersProvider.bannersList[i].name,
                                  style: TextStyleClass.semiHeadBoldStyle(
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
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
                  bannersProvider.bannersList.length,
                      (i) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: bannersProvider.index == i
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
