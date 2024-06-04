import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled1/config/text_style.dart';

import '../../../../core/widget/buttonWidget.dart';
import '../../../../core/widget/text_field.dart';

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      markers: {
        const Marker(
            markerId: MarkerId('location'),
            position: LatLng(31.246070834624668,29.96599720449118),
            infoWindow: InfoWindow(
              title: "Current Location",
            ),
            icon: BitmapDescriptor.defaultMarker
        )
      },
      initialCameraPosition: const CameraPosition(
        target: LatLng(31.246070834624668,29.96599720449118),
        zoom: 14.4746,
      ),
      onMapCreated: (GoogleMapController controller) {
      },
    );
  }
}
