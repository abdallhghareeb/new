import 'package:flutter/material.dart';
import '../../../../core/helper_functions/navigation.dart';

class HomeProvider extends ChangeNotifier{


  void goTo({required Widget className}){
    navP(className);
  }
}