import '../../domain/entities/banners_entity.dart';

class BannersModel extends BannersEntity {
  const BannersModel(
      {required super.id,
      required super.image,
      required super.name});

  factory BannersModel.fromJson(Map<String, dynamic> data) {
    return BannersModel(
      id: data['id'],
      image: data['image'],
      name: data['name'],
    );
  }
}
