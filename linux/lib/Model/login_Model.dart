class login_Model {
  Result? _result;
  String? _message;
  String? _status;

  login_Model({Result? result, String? message, String? status}) {
    if (result != null) {
      this._result = result;
    }
    if (message != null) {
      this._message = message;
    }
    if (status != null) {
      this._status = status;
    }
  }

  Result? get result => _result;
  set result(Result? result) => _result = result;
  String? get message => _message;
  set message(String? message) => _message = message;
  String? get status => _status;
  set status(String? status) => _status = status;

  login_Model.fromJson(Map<String, dynamic> json) {
    _result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
    _message = json['message'];
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._result != null) {
      data['result'] = this._result!.toJson();
    }
    data['message'] = this._message;
    data['status'] = this._status;
    return data;
  }
}

class Result {
  String? _id;
  String? _fullName;
  String? _dob;
  String? _email;
  String? _password;
  String? _image;
  String? _registerId;
  String? _socialId;
  String? _type;
  String? _status;
  String? _token;
  String? _expiredAt;
  String? _lastLogin;
  String? _dateTime;
  String? _mobile;
  Null? _iosRegisterId;
  String? _lat;
  String? _lon;
  String? _address;
  String? _gender;
  String? _otp;

  Result(
      {String? id,
        String? fullName,
        String? dob,
        String? email,
        String? password,
        String? image,
        String? registerId,
        String? socialId,
        String? type,
        String? status,
        String? token,
        String? expiredAt,
        String? lastLogin,
        String? dateTime,
        String? mobile,
        Null? iosRegisterId,
        String? lat,
        String? lon,
        String? address,
        String? gender,
        String? otp}) {
    if (id != null) {
      this._id = id;
    }
    if (fullName != null) {
      this._fullName = fullName;
    }
    if (dob != null) {
      this._dob = dob;
    }
    if (email != null) {
      this._email = email;
    }
    if (password != null) {
      this._password = password;
    }
    if (image != null) {
      this._image = image;
    }
    if (registerId != null) {
      this._registerId = registerId;
    }
    if (socialId != null) {
      this._socialId = socialId;
    }
    if (type != null) {
      this._type = type;
    }
    if (status != null) {
      this._status = status;
    }
    if (token != null) {
      this._token = token;
    }
    if (expiredAt != null) {
      this._expiredAt = expiredAt;
    }
    if (lastLogin != null) {
      this._lastLogin = lastLogin;
    }
    if (dateTime != null) {
      this._dateTime = dateTime;
    }
    if (mobile != null) {
      this._mobile = mobile;
    }
    if (iosRegisterId != null) {
      this._iosRegisterId = iosRegisterId;
    }
    if (lat != null) {
      this._lat = lat;
    }
    if (lon != null) {
      this._lon = lon;
    }
    if (address != null) {
      this._address = address;
    }
    if (gender != null) {
      this._gender = gender;
    }
    if (otp != null) {
      this._otp = otp;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get fullName => _fullName;
  set fullName(String? fullName) => _fullName = fullName;
  String? get dob => _dob;
  set dob(String? dob) => _dob = dob;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get password => _password;
  set password(String? password) => _password = password;
  String? get image => _image;
  set image(String? image) => _image = image;
  String? get registerId => _registerId;
  set registerId(String? registerId) => _registerId = registerId;
  String? get socialId => _socialId;
  set socialId(String? socialId) => _socialId = socialId;
  String? get type => _type;
  set type(String? type) => _type = type;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get token => _token;
  set token(String? token) => _token = token;
  String? get expiredAt => _expiredAt;
  set expiredAt(String? expiredAt) => _expiredAt = expiredAt;
  String? get lastLogin => _lastLogin;
  set lastLogin(String? lastLogin) => _lastLogin = lastLogin;
  String? get dateTime => _dateTime;
  set dateTime(String? dateTime) => _dateTime = dateTime;
  String? get mobile => _mobile;
  set mobile(String? mobile) => _mobile = mobile;
  Null? get iosRegisterId => _iosRegisterId;
  set iosRegisterId(Null? iosRegisterId) => _iosRegisterId = iosRegisterId;
  String? get lat => _lat;
  set lat(String? lat) => _lat = lat;
  String? get lon => _lon;
  set lon(String? lon) => _lon = lon;
  String? get address => _address;
  set address(String? address) => _address = address;
  String? get gender => _gender;
  set gender(String? gender) => _gender = gender;
  String? get otp => _otp;
  set otp(String? otp) => _otp = otp;

  Result.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _fullName = json['full_name'];
    _dob = json['dob'];
    _email = json['email'];
    _password = json['password'];
    _image = json['image'];
    _registerId = json['register_id'];
    _socialId = json['social_id'];
    _type = json['type'];
    _status = json['status'];
    _token = json['token'];
    _expiredAt = json['expired_at'];
    _lastLogin = json['last_login'];
    _dateTime = json['date_time'];
    _mobile = json['mobile'];
    _iosRegisterId = json['ios_register_id'];
    _lat = json['lat'];
    _lon = json['lon'];
    _address = json['address'];
    _gender = json['gender'];
    _otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['full_name'] = this._fullName;
    data['dob'] = this._dob;
    data['email'] = this._email;
    data['password'] = this._password;
    data['image'] = this._image;
    data['register_id'] = this._registerId;
    data['social_id'] = this._socialId;
    data['type'] = this._type;
    data['status'] = this._status;
    data['token'] = this._token;
    data['expired_at'] = this._expiredAt;
    data['last_login'] = this._lastLogin;
    data['date_time'] = this._dateTime;
    data['mobile'] = this._mobile;
    data['ios_register_id'] = this._iosRegisterId;
    data['lat'] = this._lat;
    data['lon'] = this._lon;
    data['address'] = this._address;
    data['gender'] = this._gender;
    data['otp'] = this._otp;
    return data;
  }
}
