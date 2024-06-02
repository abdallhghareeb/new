import 'package:equatable/equatable.dart';

class BannersEntity extends Equatable {
  final int id;
  final String image;
  final String name;

  const BannersEntity({
    required this.id,
    required this.image,
    required this.name,

  });

  @override

  List<Object?> get props => [
    id,image,name
  ];
}