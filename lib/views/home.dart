import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project/services/api_services.dart';
import 'package:project/views/product_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                Get.to(ProductScreen());
                // APIs.firestore
                //     .collection("Products")
                //     .doc(DateTime.now().millisecondsSinceEpoch.toString())
                //     .set({"productId": 1});
                // APIs.firestore
                //     .collection("users")
                //     .doc(APIs.auth.currentUser!.email)
                //     .set({"productId": 1});
              },
              icon: const Icon(Icons.person)),
          IconButton(
              onPressed: () {
                APIs.firestore
                    .collection("cart")
                    .doc(APIs.auth.currentUser!.email)
                    .set({"productId": "8"});
              },
              icon: const Icon(Icons.person))
        ],
      ),
    );
  }
}
