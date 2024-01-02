// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  bool status;
  String message;
  Tour tour;

  Welcome({
    required this.status,
    required this.message,
    required this.tour,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    status: json["status"],
    message: json["message"],
    tour: Tour.fromJson(json["tour"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "tour": tour.toJson(),
  };
}

class Tour {
  String toursUserId;
  String toursName;
  String toursDescription;
  String toursPrice;

  Tour({
    required this.toursUserId,
    required this.toursName,
    required this.toursDescription,
    required this.toursPrice,
  });

  factory Tour.fromJson(Map<String, dynamic> json) => Tour(
    toursUserId: json["tours_user_id"],
    toursName: json["tours_name"],
    toursDescription: json["tours_description"],
    toursPrice: json["tours_price"],
  );

  Map<String, dynamic> toJson() => {
    "tours_user_id": toursUserId,
    "tours_name": toursName,
    "tours_description": toursDescription,
    "tours_price": toursPrice,
  };
}
