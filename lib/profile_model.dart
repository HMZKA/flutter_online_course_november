class ProfileModel {
  bool? status;
  String? message;
  Data? data;
  ProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = Data.fromJson(json['data']);
    }
  }
}

class Data {
  String? name;
  String? email;
  String? token;
  String? phone;
  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    token = json['token'];
    phone = json['phone'];
  }
}
