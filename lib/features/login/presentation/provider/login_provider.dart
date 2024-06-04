import 'package:flutter/material.dart';
import 'package:untitled1/core/helper_functions/navigation.dart';

class LoginProvider extends ChangeNotifier {

  void goToPages({required Widget className}){
    navP(className);
  }

}
