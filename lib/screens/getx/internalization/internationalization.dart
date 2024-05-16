import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:practice_app/global/extentions.dart';

import '../get_controller.dart';
import 'messages.dart';

class Internationalization extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Internationalization",
      translations: Messages(),
      locale: Locale('eu','US'),
      fallbackLocale:Locale('eu','US') ,
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           Text('hello'.tr,
           style: TextStyle(
             fontSize: 25,
             color: Colors.pink
           ),
           ),
              TextButton(onPressed: (){
              myController.changeLanguage('hi', 'IN');
              },
                  child: Text("Hindi")),

              20.vertical,
              TextButton(onPressed: (){
                myController.changeLanguage('fr', 'FR');
              },
                  child: Text("French")),
              30.vertical,
              TextButton(onPressed: (){
                myController.changeLanguage('en', 'US');
              },
                  child: Text("English")),
            ],
          ),
        ),
      ),
    );
  }
}

