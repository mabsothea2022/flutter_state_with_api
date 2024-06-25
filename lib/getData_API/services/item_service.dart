import 'package:app_co3es1/getData_API/models/item_models.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class ItemSevice {
  static Future<ItemModel> readAPI() async {
    String url;

    // validate some condition
    if (defaultTargetPlatform == TargetPlatform.android) {
      // url = "http://10.0.2.2:3000/product.php";
      url = "http://10.0.2.2:3000/product.php";
    } else {
      url = "http://localhost:3000/product.php";
    }

    try {
      http.Response res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        return compute(itemModelFromMap, res.body);
      } else {
        throw Exception("Failed to load data : ${res.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : ${e.toString()}");
    }
  }
}
