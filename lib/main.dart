// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sizer/sizer.dart';
// import 'package:untitled1/core/constant/constant.dart';
// import 'package:untitled1/core/helper_functions/api.dart';
// import 'package:untitled1/features/abstract_test/presentation/provider/my_entity_provider.dart';
// import 'package:untitled1/features/cart/presentation/provider/cart_provider.dart';
// import 'package:untitled1/features/home/presentation/provider/bottom_nav_provider.dart';
// import 'package:untitled1/features/markets/presentation/provider/market_provider.dart';
// import 'features/abstract_test/presentation/provider/entity_provider.dart';
// import 'features/banners/presentation/provider/banner_provider.dart';
// import 'features/home/presentation/pages/home_page.dart';
// import 'features/home/presentation/provider/home_provider.dart';
// import 'features/language/presentation/provider/language_provider.dart';
// import 'features/login/presentation/provider/login_provider.dart';
// import 'features/main/presentation/widgets/main_page.dart';
// import 'features/profile/presentation/provider/location_provider.dart';
// import 'features/profile/presentation/provider/profile_provider.dart';
// import 'features/profile/presentation/provider/wallet_provider.dart';
// import 'features/videos/presentation/provider/comment_provider.dart';
// import 'features/videos/presentation/provider/videos_provider.dart';
// import 'injection_container.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await initializeDependencies();
//   await ApiHandle.getInstance.init();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return MultiProvider(
//           providers: [
//             // ChangeNotifierProvider(create: (context) => CartProvider(),),
//             ChangeNotifierProvider(create: (context) => LanguageProvider(),),
//             ChangeNotifierProvider(create: (context) => HomeProvider(),),
//             ChangeNotifierProvider(create: (context) => MarketProvider()..getMarketData(),),
//             ChangeNotifierProvider(create: (context) => BannersProvider()..getBannersData(),),
//             ChangeNotifierProvider(create: (context) => BottomNavProvider(),),
//             ChangeNotifierProvider(create: (context) => ProfileProvider(),),
//             ChangeNotifierProvider(create: (context) => WalletProvider(),),
//             ChangeNotifierProvider(create: (context) => LocationProvider(),),
//             ChangeNotifierProvider(create: (context) => LoginProvider(),),
//             ChangeNotifierProvider(create: (context) => VideosProvider()..initState(),),
//             ChangeNotifierProvider(create: (context) => CommentProvider(),),
//             ChangeNotifierProvider(create: (context) => TestProvider(),),
//             ChangeNotifierProvider(create: (context) => EntityProvider(),),
//           ],
//           child: MaterialApp(
//               navigatorKey: Constants.navState,
//               debugShowCheckedModeBanner: false,
//               home: MainScreen()
//
//           ),
//         );
//       },
//     );
//   }
// }
import 'dart:io';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/features/main/presentation/widgets/main_page.dart';
import 'package:untitled1/features/task_home/presentation/provider/home_provider.dart';

import 'config/app_color.dart';
import 'config/text_style.dart';
import 'config/theme.dart';
import 'core/constants/constants.dart';
import 'core/helper_function/api.dart';
import 'core/helper_function/prefs.dart';
import 'core/helper_functions/api.dart';
import 'core/models/local_notifications.dart';
import 'features/abstract_test/presentation/provider/entity_provider.dart';
import 'features/abstract_test/presentation/provider/my_entity_provider.dart';
import 'features/address/presentation/provider/location_provider.dart';
import 'features/banners/presentation/provider/banner_provider.dart';
import 'features/cart/presentation/pages/cart_home_page.dart';
import 'features/cart/presentation/provider/cart_provider.dart';
import 'features/home/presentation/provider/bottom_nav_provider.dart';
import 'features/home/presentation/provider/home_provider.dart';
import 'features/language/domain/entities/app_localizations.dart';
import 'features/language/presentation/provider/language_provider.dart';
import 'features/login/presentation/provider/login_provider.dart';
import 'features/markets/presentation/provider/market_provider.dart';
import 'features/profile/presentation/provider/profile_provider.dart';
import 'features/profile/presentation/provider/wallet_provider.dart';
import 'features/task_home/presentation/pages/task_home_page.dart';
import 'features/videos/presentation/provider/comment_provider.dart';
import 'features/videos/presentation/provider/videos_provider.dart';
import 'injection_container.dart';

// @pragma('vm:entry-point')
// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage event) async {
//   if (event.notification != null) {
//     appNotifications(event.notification!,
//         click: true, fromWhereClicked: 3, payload: event.data);
//   }
// }
//
// Future<void> localMessagingBackgroundHandler(NotificationResponse pay) async {
//   clickNoti(pay.payload!);
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  // Platform.isAndroid
  //     ? await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: 'AIzaSyChdhK1qTNqoSwcwMSXEKcpSI_7AirL1sI',
  //         appId: '1:513756547789:android:e2c9a1a3360af0bb127784',
  //         messagingSenderId: '513756547789',
  //         projectId: 'mazij-f9fd7'))
  //     : await Firebase.initializeApp();
  // await notificationsFirebase();
  // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  // await NotificationLocalClass.init();
  LanguageProvider language = LanguageProvider();
  language.fetchLocale();
  await initializeDependencies();
  await startSharedPref();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.bottom]);
  await ApiHandle.getInstance.init();
  runApp(MyApp(
    language: language,
  ));
}

RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  final LanguageProvider language;
  const MyApp({required this.language, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CartProvider(),),
          ChangeNotifierProvider(create: (context) => LanguageProvider(),),
          ChangeNotifierProvider(create: (context) => HomeProvider(),),
          ChangeNotifierProvider(create: (context) => MarketProvider()..getMarketData(),),
          ChangeNotifierProvider(create: (context) => BannersProvider()..getBannersData(),),
          ChangeNotifierProvider(create: (context) => BottomNavProvider(),),
          ChangeNotifierProvider(create: (context) => ProfileProvider(),),
          ChangeNotifierProvider(create: (context) => WalletProvider(),),
          ChangeNotifierProvider(create: (context) => LocationProvider(),),
          ChangeNotifierProvider(create: (context) => LoginProvider(),),
          ChangeNotifierProvider(create: (context) => VideosProvider()..initState(),),
          ChangeNotifierProvider(create: (context) => CommentProvider(),),
          ChangeNotifierProvider(create: (context) => TestProvider(),),
          ChangeNotifierProvider(create: (context) => EntityProvider(),),
          ChangeNotifierProvider(create: (context) => TaskHomeProvider(),),
        ],
        child: ChangeNotifierProvider<LanguageProvider>(
            create: (_) => language,
            child: Consumer<LanguageProvider>(builder: (context, lang, _) {
              return AnnotatedRegion(
                  value: barColor(),
                  child: Sizer(
                    builder: (context, orientation, deviceType) {
                      Constants.isTablet = (deviceType == DeviceType.tablet);
                      return MaterialApp(
                          title: 'My App',
                          debugShowCheckedModeBanner: false,
                          navigatorObservers: [routeObserver],
                          navigatorKey: Constants.navState,
                          locale: lang.appLocal,
                          supportedLocales: LanguageProvider.languages,
                          builder: (context, child) {
                            return Theme(
                                data: defaultTheme.copyWith(
                                    appBarTheme: AppBarTheme(
                                      color: Colors.white,
                                      elevation: 0.0,
                                      centerTitle: true,
                                      foregroundColor: AppColor.defaultColor,
                                      titleTextStyle:
                                      TextStyleClass.normalBoldStyle(
                                          color: AppColor.defaultColor),
                                    )),
                                child: Container(
                                    color: Colors.white,
                                    child: SafeArea(
                                        bottom: true,
                                        top: false,
                                        child: SizedBox(
                                            width: 100.w,
                                            height: 100.h,
                                            child:
                                            Stack(children: [child!])))));
                          },
                          localizationsDelegates: const [
                            CountryLocalizations.delegate,
                            AppLocalizations.delegate,
                            GlobalMaterialLocalizations.delegate,
                            GlobalWidgetsLocalizations.delegate,
                            GlobalCupertinoLocalizations.delegate
                          ],
                          theme: defaultTheme,
                          home: CartHomeScreen());
                    },
                  ));
            })));
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
