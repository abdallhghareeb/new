import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../entities/banners_entity.dart';

abstract class BannersRepository {
  Future<Either<DioException, List<BannersEntity>>> getBanners(Map<String,dynamic> data);
}
