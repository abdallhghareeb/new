class ImagesModel {
  String? id;
  String? link;
  String? name;
  String? type;
  int? num;
  bool like = false;
  bool fav = false;
  bool inTop = false;
  ImagesModel({
    this.id,
    this.link,
    this.type,
  });
  ImagesModel.fromJson(Map<String,dynamic> json){
    id = json['id'];
    link = json['link'];
    type = json['type'];
    like = json['like'];
    name = json['name'];
    fav = json['fav'];
    num = json['num'];
    inTop = json['inTop'];

  }


}