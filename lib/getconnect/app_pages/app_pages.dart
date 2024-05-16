import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/getconnect/home_view.dart';

import '../home_binding.dart';

import 'package:get/get.dart';
class Routes {
  static const INITIAL = _Paths.HOME;
}

class _Paths {
  static const HOME = '/home';
}

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    )

  ];

}
