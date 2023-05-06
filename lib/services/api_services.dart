import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/product.dart';

class APIs {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static var client = http.Client();
  // static Future<List<Product>?> fetchProducts() async {
  //   var response = await client.get(Uri.parse(
  //       'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
  //   if (response.statusCode == 200) {
  //     var jsonString = response.body;
  //     var list = productFromJson(jsonString);
  //     print("Hello");
  //     for (var e in list) {
  //       firestore.collection('Products').doc(e.id.toString()).set(e.toJson());
  //     }
  //     return productFromJson(jsonString);
  //   } else {
  //     return null;
  //   }

  // }
}
