import 'package:flutter/material.dart';
import 'package:untitled1/core/models/abstract_model.dart';
import 'package:untitled1/features/abstract_test/domain/entities/my_abstract_entity.dart';

import '../../../../core/constants/images.dart';

class TestProvider with ChangeNotifier implements SuperAbstract {
  List<MyTestEntity> itemInMarket = [
    MyTestEntity(
        name: "كشرييييييييييييييييييييييي",
        image: Images.italyImage,
        price: "200",
        description: "بيتزا ايطالي"),
    MyTestEntity(
        name: "كشرييييييييييييييييييييييي",
        image: Images.italyImage,
        price: "200",
        description: "بيتزا ايطالي"),
    MyTestEntity(
        name: "كشرييييييييييييييييييييييي",
        image: Images.italyImage,
        price: "200",
        description: "بيتزا ايطالي"),
    MyTestEntity(
        name: "كشرييييييييييييييييييييييي",
        image: Images.italyImage,
        price: "200",
        description: "بيتزا ايطالي")
  ];

  @override
  List<AbstractClass>? superList() {
    return itemInMarket;
  }

  int index = 0;
  @override
  void onTap(int index) {
    this.index = index;
    notifyListeners();
  }

}
