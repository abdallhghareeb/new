import 'package:flutter/material.dart';
import 'package:untitled1/core/constants/images.dart';
import '../../../../core/helper_functions/navigation.dart';

class TaskHomeProvider extends ChangeNotifier{
  List<Map<String,dynamic>> taskCategoriesList = [
    {
      "categoryName":"مشويات",
      "categoryImage":Images.mashwy,
    },
    {
      "categoryName":"سمك",
      "categoryImage":Images.fish,
    },
    {
      "categoryName":"شاورما",
      "categoryImage":Images.shawrma,
    },
    {
      "categoryName":"بيتزا",
      "categoryImage":Images.pizza,
    },
    {
      "categoryName":"فطائر",
      "categoryImage":Images.fter,
    },
  ];
}