import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled1/features/markets/domain/use_cases/market_use_case.dart';
import 'package:untitled1/features/markets/presentation/pages/market_item_home.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/helper_functions/navigation.dart';
import '../../../../injection_container.dart';
import '../../../orders/presentation/pages/order_deatails.dart';
import '../../domain/entities/market_entity.dart';
import '../pages/market_home.dart';
import '../widgets/market_image_List.dart';
import '../widgets/market_vid_list.dart';

class MarketProvider with ChangeNotifier {
  List<MarketEntity> itemInMarket = [];
  bool isPhoto = true;
  void goToMarketPage(marketData) {
    navP(
      MarketHome(marketData: marketData),
    );
  }

  void goToMarketItemPage() {
    navP(
      MarketItemHome(),
    );
  }

  void goToOrderDetails() {
    navP(
      OrderDeatailsHome(),
    );
  }


  Future getMarketData() async {
    Map<String, dynamic> data = {};
    data['lat'] = 0;
    data['lng'] = 0;
    data['page'] = 1;
    Either<DioException, List<MarketEntity>> response =
        await MarketUseCase(sl()).getNearBranches(data);
    response.fold((l) {
      print('$l');
    }, (r) {
      for (var element in r) {
        itemInMarket.add(element);
      }
      notifyListeners();
    });
  }

  Color textColor({bool? isVid}){
    if(isVid != isPhoto){
      return Colors.white;
    }
    return HexColor("#264653");
  }
  Color iconColor({bool? isVid}){
    if(isVid != isPhoto){
      return Colors.white;
    }
    return MyColor.firstColor;
  }
  Color backGround({bool? isVid}){
    if(isVid != isPhoto){
      return HexColor("#264653");
    }
    return Colors.white;
  }

  Widget photoOrVid(){
    if(!isPhoto){
      return MarketVideosListWidget();
    }
    return MarketImageListWidget();
  }

  void goToVideos(){
    isPhoto = false;
    notifyListeners();
  }
  void goToPhoto(){
    isPhoto = true;
    notifyListeners();
  }

  int itemSliderIndex=0 ;
  void changeIndex(int index){
    itemSliderIndex = index;
    notifyListeners();
  }


}
