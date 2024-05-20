import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/bloc_observer.dart';
import 'cubit/cubit.dart';
import 'home_page/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(
      MyApp(startWidget: HomeScreen())
  );

}


class MyApp extends StatelessWidget {
  final Widget? startWidget;
  const MyApp({super.key, required this.startWidget});


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ));
    return BlocProvider(
      create: (context) => AppCubit()..getBytesFromAsset(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: startWidget
        // SplashScreen(widget: startWidget!),
      ),
    );
  }
}

