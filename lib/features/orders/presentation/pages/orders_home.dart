import 'package:flutter/material.dart';
import 'package:untitled1/features/home/presentation/widgets/bottom_nav_widget.dart';


class OrderHomePage extends StatelessWidget {
  OrderHomePage({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: myKey,
    );
  }
}
