import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/features/markets/presentation/provider/market_provider.dart';
import '../../../../core/constants/colors.dart';
import '../../../cart/presentation/provider/cart_provider.dart';
import '../../domain/entities/market_entity.dart';

class MarketImageWidget extends StatelessWidget {
  MarketEntity marketData;
  MarketImageWidget( {super.key,required this.marketData});
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Provider.of<MarketProvider>(context,listen: false).goToMarketPage(marketData);
      },
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100.w,
              height: 15.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2.w),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(2.w), // Image radius
                  child: Image(
                    image:  NetworkImage(
                      marketData.image,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    marketData.name,
                    textAlign: TextAlign.right,
                    style: TextStyleClass.normalStyle(fontSize: 9.sp),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                  Text(
                    marketData.name,
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
                  Text(
                    "${marketData.id}  ر.س",
                    textAlign: TextAlign.right,
                    style: TextStyleClass.smallStyle(
                      color: MyColor.firstColor,
                    ),
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
