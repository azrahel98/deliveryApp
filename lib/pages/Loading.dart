import 'package:app1/controllers/Loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoadingController>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Lottie.asset("assets/loading.json"),
        ),
      ),
    );
  }
}
