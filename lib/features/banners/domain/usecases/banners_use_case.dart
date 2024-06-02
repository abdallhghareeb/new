import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../entities/banners_entity.dart';
import '../repositories/banner_repository.dart';

class BannersUseCase {
  final BannersRepository marketRepository;
  BannersUseCase(this.marketRepository);

  Future<Either<DioException, List<BannersEntity>>> getNearBranches(
      Map<String, dynamic> data) async {
    return await marketRepository.getBanners(data);
  }
}
