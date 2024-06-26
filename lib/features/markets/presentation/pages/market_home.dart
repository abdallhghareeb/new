import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/markets/presentation/provider/market_provider.dart';
import 'package:untitled1/features/markets/presentation/widgets/images_or_vid.dart';
import 'package:untitled1/features/markets/presentation/widgets/market_icon_widget.dart';
import '../../../../core/constants/constants.dart';
import '../../domain/entities/market_entity.dart';

class MarketHome extends StatelessWidget {
  MarketEntity marketData ;
  MarketHome({super.key,required this.marketData});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var marketProvider =Provider.of<MarketProvider>(context);

    return Consumer(builder: (context, value, child) => Scaffold(
        key: myKey,
        body: SizedBox(
            width: 100.w,
            height: 100.h,
            child:  SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 8.h,),
                  Padding(
                    padding: appPadding,
                    child: MarketIconAndName(marketData: marketData,),
                  ),
                  TextButton(onPressed: (){
                    Provider.of<MarketProvider>(context,listen: false).goToMarketItemPage();

                  }, child: const Text("صفحة المنتج")),
                  SizedBox(height: 2.h),
                  const ImageOrVidWidget(),
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: appPadding,
                    child: marketProvider.photoOrVid(),
                  ),

                ],
              ),
            ))),);
  }
}
