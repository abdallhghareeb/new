import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import '../widgets/add_location_widget.dart';
import '../widgets/google_map_widget.dart';

class AddLocationPage extends StatelessWidget {
  const AddLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("اضافة عنوان جديد",style: TextStyleClass.headBoldStyle(color: HexColor("#404347")),),
      ),
      body: Stack(alignment: Alignment.bottomCenter,
        children: [
          const GoogleMapWidget(),
          Positioned(
              bottom: 2.h,
              right: 4.w,
              left: 4.w,
              child: const AddLocationWidget()),
        ],
      ),
    );
  }
}
