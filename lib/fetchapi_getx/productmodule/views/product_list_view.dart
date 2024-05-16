import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/fetchapi_getx/commonmodule/app_string.dart';

import '../controller/product_controller.dart';
class ProductListView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController);
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
      ),
      body: Obx((){
if(productController.isLoading.value)
  return Center(child: ProgressIndicator());
else
  return ListView.builder(
  itemCount: productController.productsList.length,    ,
  itemBuilder: (context, index){
    return Column(
      children: [
        Row(
          [

          ]
        )
      ],
    )
  }
  )
    }),
    );
  }
}
