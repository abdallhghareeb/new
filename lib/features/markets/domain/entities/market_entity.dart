import 'package:equatable/equatable.dart';

class MarketEntity extends Equatable {
  final int id;
  final String name;
  final int status;
  final double lat;
  final double lng;
  final String address;
  final String image;

  const MarketEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.lat,
    required this.lng,
    required this.address,
    required this.image,
  });

  @override

  List<Object?> get props => [
    id,name,status,lat,lng,address,image
  ];
}