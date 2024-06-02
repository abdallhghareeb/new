import 'package:dartz/dartz.dart';
import 'package:dio/src/dio_exception.dart';
import 'package:untitled1/features/markets/data/data_sources/remote_market_data.dart';
import 'package:untitled1/features/markets/domain/entities/market_entity.dart';
import '../../domain/repositories/market_repositories.dart';

class MarketRepoImpl implements MarketRepository {
  @override
  Future<Either<DioException, List<MarketEntity>>> getNearBranches(Map<String, dynamic> data)async {

    return await MarketRemoteDataSource.getNearBranches(data);
  }


}