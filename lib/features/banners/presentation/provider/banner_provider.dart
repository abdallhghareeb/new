import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../../injection_container.dart';
import '../../domain/entities/banners_entity.dart';
import '../../domain/usecases/banners_use_case.dart';

class BannersProvider with ChangeNotifier {
  List<BannersEntity> bannersList = [];
  int index = 0;
  Future getBannersData() async {
    Map<String, dynamic> data = {};
    data['lat'] = 0;
    data['lng'] = 0;
    Either<DioException, List<BannersEntity>> response = await BannersUseCase(sl()).getNearBranches(data);
    response.fold((l) {
      print('$l');
    }, (r) {
      for (var element in r) {
        bannersList.add(element);
      }
      notifyListeners();
    });
  }
  void changeIndex(int index){
    this.index = index;
    notifyListeners();
  }

}
