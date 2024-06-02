import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled1/features/markets/domain/repositories/market_repositories.dart';
import '../entities/market_entity.dart';

class MarketUseCase {
  final MarketRepository marketRepository;
  MarketUseCase(this.marketRepository);

  Future<Either<DioException, List<MarketEntity>>> getNearBranches(
      Map<String, dynamic> data) async {
    return await marketRepository.getNearBranches(data);
  }
}
