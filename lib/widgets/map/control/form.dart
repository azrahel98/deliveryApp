import 'dart:ffi';

import 'package:app1/services/api/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FormController extends GetxController {
  bool check = false;

  TextEditingController cliente = TextEditingController();
  TextEditingController ruc = TextEditingController();
  TextEditingController direc = TextEditingController();
  TextEditingController obs = TextEditingController();

  // String? _cliente, _direccion, _obs;

  // String? get cliente => _cliente;
  // String? get direc => _direccion;
  // String? get obs => _obs;

  // set cliente(String? x) {
  //   _cliente = x;
  //   update(['cliente']);
  // }

  // set direc(String? x) {
  //   _direccion = x;
  //   update(['direccion']);
  // }

  // set obs(String? x) {
  //   _cliente = x;
  //   update(['obs']);
  // }

  Future<bool> _checkallfil() async {
    if (cliente.text.length == 0 ||
        ruc.text.length == 0 ||
        direc.text.length == 0 ||
        obs.text.length == 0) {
      Get.snackbar(
        "Error!!", // title
        "Rellena los campos", // message
        icon: Icon(Icons.file_copy_outlined),
        backgroundColor: Colors.red,
        isDismissible: false,
        duration: Duration(seconds: 2),
        animationDuration: Duration(seconds: 1),
        snackPosition: SnackPosition.BOTTOM,
        snackStyle: SnackStyle.FLOATING,
      );
      return false;
    }
    return true;
  }

  press(LatLng lt) async {
    if (await _checkallfil()) {
      try {
        ServerRemote.addClientWithLocation(
            cliente.text, direc.text, obs.text, lt, Int64.parseInt(ruc.text));
        print("object22");
        print(2);
      } catch (e) {
        print("object");
        print(e);
      }
    } else {
      print("n");
    }
  }

  @override
  void onReady() {
    super.onReady();
  }
}
