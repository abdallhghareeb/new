import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../provider/my_entity_provider.dart';
import '../widgets/abstract__List.dart';

class MyTestHome extends StatelessWidget {
  MyTestHome({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var testProvider= Provider.of<TestProvider>(context) ;
    return Scaffold(
        key: myKey,
        body: SizedBox(
            width: 100.w,
            height: 100.h,
            child:  SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 8.h,),
                  TestHomeList(superAbstract: testProvider,),
                ],
              ),
            )));
  }
}
