import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/fetchapi_getx/apimodule/api_services.dart';
import 'package:practice_app/fetchapi_getx/productmodule/models/product_model.dart';
class ProductController extends GetxController{
  var isLoading =true.obs;
  var productsList = <ProductModel>[].obs;


  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try{
      isLoading(true);
      var products = await ApiServices.fetchProduct();
      if(products!= null){
        productsList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }

  }
}