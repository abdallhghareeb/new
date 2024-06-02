import 'package:get_it/get_it.dart';
import 'package:untitled1/features/markets/domain/repositories/market_repositories.dart';
import 'features/banners/data/repositories/banners_repo_impl.dart';
import 'features/banners/domain/repositories/banner_repository.dart';
import 'features/markets/data/repositories/market_repo_impl.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  sl.registerSingleton<MarketRepository>(MarketRepoImpl());
  sl.registerSingleton<BannersRepository>(BannersRepoImpl());
}
