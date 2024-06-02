import 'package:untitled1/features/markets/domain/entities/market_entity.dart';

class MarketModel extends MarketEntity {
  MarketModel(
      {required super.id,
      required super.name,
      required super.status,
      required super.lat,
      required super.lng,
      required super.address,
      required super.image});

  factory MarketModel.fromJson(Map<String, dynamic> data) {
    return MarketModel(
      id: data['id'],
      name: data['name'],
      status: data['status'],
      lat: data['lat'],
      lng: data['lng'],
      address: data['address'],
      image: data['image'],
    );
  }
}
