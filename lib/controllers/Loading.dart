import 'dart:async';

import 'package:app1/routes/app.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class LoadingController extends GetxController {
  bool isloading = false;

  Future<void> _checkPermiss() async {
    Future.delayed(Duration(seconds: 3));
    var status = await Permission.location.status;
    if (status.isGranted) {
      isloading = true;
      Get.offAndToNamed(AppRoutes.HomePage);
    }
    var rst = await Permission.location.request();

    if (rst.isPermanentlyDenied) {
      await openAppSettings();
      update();
    }
  }

  @override
  void onReady() {
    super.onReady();
    _checkPermiss();
  }
}
