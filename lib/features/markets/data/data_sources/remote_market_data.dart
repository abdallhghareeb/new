import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled1/core/helper_functions/api.dart';
import 'package:untitled1/features/markets/data/models/remote_markets_model.dart';

class MarketRemoteDataSource {
  static Future<Either<DioException, List<MarketModel>>> getNearBranches(
      Map<String, dynamic> data) async {
    var response =  await ApiHandle.getInstance.post('guest/get_near_branches', data);
    return response.fold((l) => Left(l), (r) {
      List<MarketModel> marketsModel = [];
      for (var i in r.data['data']) {
        marketsModel.add(MarketModel.fromJson(i));
      }
      return Right(marketsModel);
    });
  }

}
