import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/features/home/presentation/pages/home_page.dart';
import 'package:untitled1/features/markets/presentation/provider/market_provider.dart';

class HomeProvider extends ChangeNotifier{

  Widget getHomePage(){
    Provider.of<MarketProvider>(Constants.globalContext(),listen: false).getMarketData();
    return HomeScreen();
  }
}