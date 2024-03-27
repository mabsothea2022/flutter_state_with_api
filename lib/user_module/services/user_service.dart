import 'package:app_co3es1/user_module/model/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class UserService {
  static Future<RadomUserModel> getAPI() async {
    try {
      http.Response responce = await http.get(
        Uri.parse("https://randomuser.me/api/?results=33&page=1"),
      );
      return compute(radomUserModelFromMap, responce.body);
    } catch (e) {
      throw Exception(
        e.toString(),
      );
    }
  }
}
