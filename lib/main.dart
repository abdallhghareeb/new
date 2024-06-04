import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/core/helper_functions/api.dart';
import 'package:untitled1/features/cart/presentation/provider/cart_provider.dart';
import 'package:untitled1/features/home/presentation/provider/bottom_nav_provider.dart';
import 'package:untitled1/features/markets/presentation/provider/market_provider.dart';
import 'features/banners/presentation/provider/banner_provider.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/home/presentation/provider/home_provider.dart';
import 'features/login/presentation/provider/login_provider.dart';
import 'features/main/presentation/widgets/main_page.dart';
import 'features/profile/presentation/provider/location_provider.dart';
import 'features/profile/presentation/provider/profile_provider.dart';
import 'features/profile/presentation/provider/wallet_provider.dart';
import 'features/videos/presentation/provider/videos_provider.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  await ApiHandle.getInstance.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            // ChangeNotifierProvider(create: (context) => CartProvider(),),
            ChangeNotifierProvider(create: (context) => HomeProvider(),),
            ChangeNotifierProvider(create: (context) => MarketProvider()..getMarketData(),),
            ChangeNotifierProvider(create: (context) => BannersProvider()..getBannersData(),),
            ChangeNotifierProvider(create: (context) => BottomNavProvider(),),
            ChangeNotifierProvider(create: (context) => ProfileProvider(),),
            ChangeNotifierProvider(create: (context) => WalletProvider(),),
            ChangeNotifierProvider(create: (context) => LocationProvider(),),
            ChangeNotifierProvider(create: (context) => LoginProvider(),),
            ChangeNotifierProvider(create: (context) => VideosProvider()..initState(),),
          ],
          child: MaterialApp(
              navigatorKey: Constants.navState,
              debugShowCheckedModeBanner: false,
              home: MainScreen()),
        );
      },
    );
  }
}
