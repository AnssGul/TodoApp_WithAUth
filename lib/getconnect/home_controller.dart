import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/getconnect/user_provider.dart';
class HomeController extends GetxController with StateMixin<List<dynamic>>{

  @override
void onInit() {
    super.onInit();
    UserProvider().getUser().then((resp){
     change(resp,status: RxStatus.success());
    }, onError: (err) {
      change(null,status: RxStatus.error(err.toString()));
    }
    );
  }
}