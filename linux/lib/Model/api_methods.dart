import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kanku/Model/user_model.dart';

class ApiMethods {
  static Future<UserModel?> userData({required String userId}) async {
    try {
      http.Response? response = await http.get(
        Uri.parse('https://api.kankuapp.com:8080/api/user/$userId'),
      );

      print('response:::::::::::::::$response');
      UserModel userModel = UserModel.fromJson(jsonDecode(response.body));
      return userModel;
    } catch (error) {
      print(error);
    }
    return null;
  }
}
