import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../provider/market_provider.dart';
import 'market_vid_sub_card.dart';

class MarketVideosListWidget extends StatelessWidget {
  const MarketVideosListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var marketProvider =Provider.of<MarketProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
          runSpacing: 2.h,
          alignment: WrapAlignment.spaceBetween,
          children: [
            ...List.generate(9, (index) {
              return  const MarketVideosWidget();
            }),
          ]
      ),
    );
  }
}
