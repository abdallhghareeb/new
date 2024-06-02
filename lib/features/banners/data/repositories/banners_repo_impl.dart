import 'package:dartz/dartz.dart';
import 'package:dio/src/dio_exception.dart';
import '../../domain/entities/banners_entity.dart';
import '../../domain/repositories/banner_repository.dart';
import '../datasources/remote_banner_data_source.dart';

class BannersRepoImpl implements BannersRepository {
  @override
  Future<Either<DioException, List<BannersEntity>>> getBanners(Map<String, dynamic> data)async {

    return await BannersRemoteDataSource.getNearBranches(data);
  }


}