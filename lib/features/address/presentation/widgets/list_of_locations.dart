import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


import '../provider/location_provider.dart';
import 'location_widget.dart';

class ListOfLocationsWidgets extends StatelessWidget {
  const ListOfLocationsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    var locationProvider = Provider.of<LocationProvider>(context);
    return SizedBox(
      width: 100.w,
      child: Wrap(
        children: List.generate(locationProvider.myLocation.length, (index) =>
            MyLocationWidget(locations: locationProvider.myLocation[index],index: index,)),
      ),
    );
  }


}
