class Welcome {
  bool? status;
  String? message;
  Wish? wish;

  Welcome({this.status, this.message, this.wish});

  Welcome.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    wish = json['wish'] != null ? new Wish.fromJson(json['wish']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.wish != null) {
      data['wish'] = this.wish!.toJson();
    }
    return data;
  }
}

class Wish {
  String? wishUserId;
  String? wishTourId;

  Wish({this.wishUserId, this.wishTourId});

  Wish.fromJson(Map<String, dynamic> json) {
    wishUserId = json['wish_user_id'];
    wishTourId = json['wish_tour_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wish_user_id'] = this.wishUserId;
    data['wish_tour_id'] = this.wishTourId;
    return data;
  }
}
