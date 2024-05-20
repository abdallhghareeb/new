import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

class MapScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var cubit = AppCubit.get(context);
    String loc = "Al Reyad , Hay ElsefratAl Reyad , Hay Elsefrat";
    
    return BlocConsumer<AppCubit, States>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title:const Center(child: Text("الموقع",style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: "DIN"),),),
          ),
          body: Stack(alignment: Alignment.bottomCenter,
            children: [

              GoogleMap(
                mapType: MapType.normal,
                markers: {
                   Marker(
                    markerId: const MarkerId('location'),
                    position: cubit.myMark,
                      infoWindow: const InfoWindow(
                        title: "Current Location",
                      ),
                     icon: cubit.myBitmapDescriptor
                  )
                },
                initialCameraPosition: cubit.kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                },
                onTap:(argument) async{

                  cubit.myMark = LatLng(argument.latitude,argument.longitude);
                  cubit.myBitmapDescriptor = BitmapDescriptor.fromBytes(cubit.markerIcon);
                  // cubit.placeMarks = await placemarkFromCoordinates(argument.latitude, argument.longitude);
                  cubit.refresh();

                },
              ),
              Container(
                height: 180,
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Delivery location",style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontFamily: "DIN"),),
                    const SizedBox(height: 20,),
                    Center(
                      child: Text(cubit.placeMarks.isEmpty ? loc:"${cubit.placeMarks.first.street}",style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          fontFamily: "DIN"),),
                    ),
                    const SizedBox(height: 20,),
                    Center(
                      child: Container(

                          width: 150,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: HexColor("#264653")
                          ),child: TextButton(onPressed: (){

                      }, child:const Center(child: Text("حفظ الموقع",style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "DIN"),),))),
                    )
                  ],
                ),
              ),

            ],
          )
        );
      },

      listener: (BuildContext context, Object? state) {},
    );
  }

}
