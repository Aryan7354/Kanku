class TourModel {
  List<TourResult> tours;
  String message;
  String status;

  TourModel({
    required this.tours,
    required this.message,
    required this.status,
  });

  factory TourModel.fromJson(Map<String, dynamic> json) => TourModel(
    tours: List<TourResult>.from(json["tours"].map((x) => TourResult.fromJson(x))),
    message: json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "tours": List<dynamic>.from(tours.map((x) => x.toJson())),
    "message": message,
    "status": status,
  };
}

class TourResult {
  int toursId;
  String toursName;
  String toursDescription;
  String toursImage;
  int toursUsersId;
  String toursLatitude;
  String toursLongitude;
  String toursPrice;
  String toursLocation;
  String toursStatus;
  String fullName;
  String email;
  List<ToursImageGallery> toursImageGalleries;

  TourResult({
    required this.toursId,
    required this.toursName,
    required this.toursDescription,
    required this.toursImage,
    required this.toursUsersId,
    required this.toursLatitude,
    required this.toursLongitude,
    required this.toursPrice,
    required this.toursLocation,
    required this.toursStatus,
    required this.fullName,
    required this.email,
    required this.toursImageGalleries,
  });

  factory TourResult.fromJson(Map<String, dynamic> json) => TourResult(
    toursId: json["tours_id"],
    toursName: json["tours_name"],
    toursDescription: json["tours_description"],
    toursImage: json["tours_image"],
    toursUsersId: json["tours_users_id"],
    toursLatitude: json["tours_latitude"],
    toursLongitude: json["tours_longitude"],
    toursPrice: json["tours_price"],
    toursLocation: json["tours_location"],
    toursStatus: json["tours_status"],
    fullName: json["full_name"],
    email: json["email"],
    toursImageGalleries: List<ToursImageGallery>.from(json["tours_image_galleries"].map((x) => ToursImageGallery.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "tours_id": toursId,
    "tours_name": toursName,
    "tours_description": toursDescription,
    "tours_image": toursImage,
    "tours_users_id": toursUsersId,
    "tours_latitude": toursLatitude,
    "tours_longitude": toursLongitude,
    "tours_price": toursPrice,
    "tours_location": toursLocation,
    "tours_status": toursStatus,
    "full_name": fullName,
    "email": email,
    "tours_image_galleries": List<dynamic>.from(toursImageGalleries.map((x) => x.toJson())),
  };
}

class ToursImageGallery {
  int tigId;
  int tigToursId;
  String tigToursImageName;

  ToursImageGallery({
    required this.tigId,
    required this.tigToursId,
    required this.tigToursImageName,
  });

  factory ToursImageGallery.fromJson(Map<String, dynamic> json) => ToursImageGallery(
    tigId: json["tig_id"],
    tigToursId: json["tig_tours_id"],
    tigToursImageName: json["tig_tours_image_name"],
  );

  Map<String, dynamic> toJson() => {
    "tig_id": tigId,
    "tig_tours_id": tigToursId,
    "tig_tours_image_name": tigToursImageName,
  };
}
