import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/helper_functions/navigation.dart';


class LocationProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> myLocation = [
    {
      "address_name": "المنزل",
      "fullAddress": "مصر الشرقية",
      "lng":"3656592959",
    },
    {
      "address_name": "العمل",
      "fullAddress": "مصر اسوان",
      "lng":"3656592959",
    },
  ];

  void addToMyLocations(){
    myLocation.add(    {
      "address_name": "المنزل",
      "fullAddress": "مصر القاهرة",
      "lng":"3656592959",
    },);
    notifyListeners();
  }


  void deleteFromMyLocations({required int index}){
    myLocation.removeAt(index);
    notifyListeners();
  }

  void goToAddLocation({required Widget className}){
    navP(className);
  }
}
