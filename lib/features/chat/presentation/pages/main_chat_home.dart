import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../home/presentation/widgets/bottom_nav_widget.dart';


class MainChatHome extends StatelessWidget {
  MainChatHome({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: myKey,
    );
  }
}
