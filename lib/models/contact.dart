class ContactModel {
  String? email;
  String? mobile;
  String? instagram;
  String? facebook;
  String? twitter;
  String? snapchat;
  ContactModel({
    this.email,
    this.mobile,
    this.instagram,
  });
  ContactModel.fromJson(Map<String,dynamic> json){
    email = json['email'];
    mobile = json['mobile'];
    instagram = json['instagram'];
    twitter = json['twitter'];
    snapchat = json['snapchat'];
    facebook = json['facebook'];
  }


}