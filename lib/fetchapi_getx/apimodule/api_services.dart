import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../productmodule/models/product_model.dart';
class ApiServices {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProduct() async {
    var response = await client.get(
        Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie')
    );

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      // Handle the error appropriately
      throw Exception('Failed to load products');
    }
  }
}