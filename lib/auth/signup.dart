import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:project/views/home.dart';

import '../services/api_services.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
        child: InkWell(
          onTap: login(),
        ),
      ),
    );
  }

  login() {
    // if (formKey.currentState!.validate()) {
    //   APIs.auth
    //       .signInWithEmailAndPassword(email: email, password: password)
    //       .then((value) async {
    //     APIs.getSelfInfo();
    //     if (email == "moiz@gmail.com") {
    //       Navigator.pushReplacement(context,
    //           MaterialPageRoute(builder: (context) => const AdminHome()));
    //     } else {
    //       Navigator.pushReplacement(context,
    //           MaterialPageRoute(builder: (context) => const PsyHome()));
    //     }
    //   });
    // }
    APIs.auth
        .signInWithEmailAndPassword(
            email: "moeez@gmail.com", password: "moeez12")
        .then((value) => Get.to(HomePage()));
  }
}
