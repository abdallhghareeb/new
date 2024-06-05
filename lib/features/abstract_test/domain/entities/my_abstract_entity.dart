import 'package:untitled1/core/models/abstract_model.dart';

class MyTestEntity implements AbstractClass {
  @override
   String description;
  @override
   String name;
  @override
   String price;
  @override
   String image;


   MyTestEntity({
    required this.description,
    required this.name,
    required this.price,
    required this.image,

  });


}