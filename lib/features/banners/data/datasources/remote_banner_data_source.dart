import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled1/core/helper_functions/api.dart';

import '../models/banners_model.dart';


class BannersRemoteDataSource {
  static Future<Either<DioException, List<BannersModel>>> getNearBranches(
      Map<String, dynamic> data) async {
    var response =  await ApiHandle.getInstance.post('guest/get_banners', data);
    return response.fold((l) => Left(l), (r) {
      List<BannersModel> bannersModel = [];
      for (var i in r.data['data']) {
        bannersModel.add(BannersModel.fromJson(i));
      }
      return Right(bannersModel);
    });
  }

}
