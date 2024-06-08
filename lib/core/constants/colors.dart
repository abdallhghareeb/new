import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class MyColor {

  static final Color firstColor = HexColor("#25A189");
  static final Color bottomNavColor = HexColor("#B9C0C9");

}

BoxShadow myBoxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 0.5,
  blurRadius: 1,
  offset: const Offset(0, 5), // changes position of shadow
);