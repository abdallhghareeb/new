import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../entities/market_entity.dart';

abstract class MarketRepository {
  Future<Either<DioException, List<MarketEntity>>> getNearBranches(Map<String,dynamic> data);
}
