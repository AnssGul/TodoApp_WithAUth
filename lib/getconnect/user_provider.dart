import 'package:flutter/material.dart';
import 'package:get/get.dart';
class UserProvider extends GetConnect{
  Future <List<dynamic>> getUser() async {
    final response = await get('https://randomuser.me/api/?results=10');
    if(response.status.hasError){
      return Future.error(response.hasError);
    } else {
      return response.body['results'];
    }
  }
}