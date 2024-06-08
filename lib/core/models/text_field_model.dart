import 'package:flutter/cupertino.dart';

class TextFieldModel{
  String? image,key,label,hint,titleText;
  TextInputType? textInputType;
  TextEditingController controller;
  bool next,obscureText,readOnly;
  String? Function(String?)? validator;
  Widget? suffix,prefix,title;
  void Function()? onTap;
  double? width;
  EdgeInsets? contentPadding;
  
  TextFieldModel(
      {this.image,
        this.key,
        this.label,
        this.hint = "",
        this.textInputType,
        this.readOnly = false,
        required this.controller,
        this.next = true,
        this.validator,
        this.onTap,
        this.suffix,
        this.prefix,
        this.title,
        this.titleText,
        this.width,
        this.contentPadding,
        this.obscureText = false});

}