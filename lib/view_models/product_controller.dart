import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/services/api_services.dart';

import '../models/product.dart';

class ProductController extends GetxController {
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
    FirebaseFirestore.instance
        .collection("Products")
        .snapshots()
        .listen((records) {
      mapRecords(records);
    });
    super.onInit();
  }

  var isLoading = true.obs;

  fetchProducts() async {
    var records = await APIs.firestore
        .collection("Products")
        .orderBy("id", descending: false)
        .get();
    print(records);

    mapRecords(records);
  }

  mapRecords(QuerySnapshot<Map<String, dynamic>> records) {
    var _list = records.docs.map((item) {
      return Product.fromJson(item.data());
    }).toList();
    productList.value = _list;
    if (productList.value != null) {
      isLoading.value = false;
    }
  }

  var productList = <Product>[].obs;
  // void fetchProducts() async {
  //   try {
  //     isLoading(true);
  //     var products = await APIs.fetchProducts();
  //     if (products != null) {
  //       productList.value = products;
  //       print(products);
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }
}
