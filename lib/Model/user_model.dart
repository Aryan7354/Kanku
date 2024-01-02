class UserModel {
  User? user;
  String? message;
  String? status;

  UserModel({this.user, this.message, this.status});

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? email;
  String? fullName;
  String? mobile;
  String? latitude;
  String? longitude;

  User(
      {this.id,
      this.username,
      this.email,
      this.fullName,
      this.mobile,
      this.latitude,
      this.longitude});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    fullName = json['full_name'];
    mobile = json['mobile'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['email'] = email;
    data['full_name'] = fullName;
    data['mobile'] = mobile;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}
