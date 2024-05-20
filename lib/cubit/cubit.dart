import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'states.dart';

class AppCubit extends Cubit<States> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);


  void refresh(){
    emit(Refresh());
  }



  late GoogleMapController mapController;

  double latitude = 31.246070834624668;
  double longitude = 29.96599720449118;
  var myMark = const LatLng(31.246070834624668,29.96599720449118);
  List<Placemark> placeMarks =[];
  CameraPosition   kGooglePlex =  const CameraPosition(
    target: LatLng(31.246070834624668,29.96599720449118),
    zoom: 14.4746,
  );
  BitmapDescriptor myBitmapDescriptor = BitmapDescriptor.defaultMarker;
  late Uint8List markerIcon;
  Future getBytesFromAsset() async {
    ByteData data = await rootBundle.load("assets/images/market_image.png");
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: 100);
    ui.FrameInfo fi = await codec.getNextFrame();
    markerIcon=(await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List() ;
  }


}