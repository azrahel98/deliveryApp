import 'dart:async';

import 'package:app1/routes/app.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class LoadingController extends GetxController {
  bool isloading = false;

  Future<void> _checkPermiss() async {
    var status = await Permission.location.status;
    if (status.isGranted) {
      isloading = true;
      Get.offAndToNamed(AppRoutes.HomePage);
    }
  }

  checkPermiss() {
    Timer.periodic(
      Duration(
        seconds: 2,
      ),
      (timer) async {
        print("Checando permisos");
        var status = await Permission.location.status;
        if (status.isGranted || status.isLimited) {
          Get.offAndToNamed(AppRoutes.HomePage);
          timer.cancel();
        }
      },
    );
  }

  @override
  void onInit() {
    checkPermiss();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _checkPermiss();
  }
}
