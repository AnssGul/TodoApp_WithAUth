import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/getconnect/home_controller.dart';
class HomeBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        ()=> HomeController()
    );
  }
}