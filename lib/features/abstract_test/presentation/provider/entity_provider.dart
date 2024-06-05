import 'package:flutter/material.dart';
import 'package:untitled1/core/models/abstract_model.dart';
import 'package:untitled1/features/abstract_test/domain/entities/abstract_entity.dart';
import '../../../../core/constant/images.dart';


class EntityProvider with ChangeNotifier  implements SuperAbstract{
  List<TestEntity> itemInMarket = [
    TestEntity(
        name: "فراخ",
        image: Images.orderImage,
        price:"300000",
        description: "فتة شاورما"
    ),
    TestEntity(
        name: "فراخ",
        image: Images.orderImage,
        price:"300000",
        description: "فتة شاورما"
    ),
    TestEntity(
        name: "فراخ",
        image: Images.orderImage,
        price:"300000",
        description: "فتة شاورما"
    ),
    TestEntity(
        name: "فراخ",
        image: Images.orderImage,
        price:"300000",
        description: "فتة شاورما"
    )
  ];


  @override
  List<AbstractClass>? superList() {
    return itemInMarket;
  }


}
