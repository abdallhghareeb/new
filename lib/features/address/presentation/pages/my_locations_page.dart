import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/config/text_style.dart';
import 'package:untitled1/core/widget/buttonWidget.dart';
import '../../../../core/constants/constants.dart';
import '../../../address/presentation/pages/add_location_page.dart';
import '../provider/location_provider.dart';
import '../widgets/list_of_locations.dart';

class MyLocationsPage extends StatelessWidget {
  MyLocationsPage({super.key});

  final GlobalKey<ScaffoldState> myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var locationProvider = Provider.of<LocationProvider>(context);
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
                const ListOfLocationsWidgets(),
                SizedBox(height: 10.h,),
                ButtonWidget(textOfButton: "اضف عنوان جديد",buttonFunction: () {
                  locationProvider.goToAddLocation(className: AddLocationPage());
                } , ),

              ],
            ),
          )),
    );
  }
}
