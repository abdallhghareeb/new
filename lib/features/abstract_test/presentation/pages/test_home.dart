import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/core/constant/constant.dart';
import 'package:untitled1/features/abstract_test/domain/entities/abstract_entity.dart';
import 'package:untitled1/features/abstract_test/presentation/provider/entity_provider.dart';

import '../widgets/abstract__List.dart';

class TestHome extends StatelessWidget {
  TestHome({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var testProvider= Provider.of<EntityProvider>(context) ;

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
                  TestHomeList(superAbstract: testProvider),
                ],
              ),
            )));
  }
}
