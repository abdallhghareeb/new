import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import '../../../../core/constant/constant.dart';
import '../widgets/location_widget.dart';

class MyLocationsPage extends StatelessWidget {
  MyLocationsPage({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: myKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("عناويني",style: TextStyleClass.normalBoldStyle(),),
      ),
      body:  Container(
          width: 100.w,
          height: 100.h,
          padding: appPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyLocationWidget(),
                SizedBox(height: 10.h,),
                ButtonWidget(textOfButton: "اضف عنوان جديد", colorOfButton:HexColor("264653") )
              ],
            ),
          )),
    );
  }
}
