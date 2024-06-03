// import 'package:flutter/material.dart';
// import '../../../markets/domain/entities/market_entity.dart';
//
// class CartProvider with ChangeNotifier{
//   List<MarketEntity> itemInCart=[];
//   double cartPrice = 0.0;
//   void add(MarketEntity item){
//     itemInCart.add(item);
//     cartPrice += item.id;
//     notifyListeners();
//   }
//   int get count {
//     return itemInCart.length;
//   }
//   double get totalPrice {
//     return cartPrice;
//   }
// }