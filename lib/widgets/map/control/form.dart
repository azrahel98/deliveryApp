import 'package:app1/services/api/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FormController extends GetxController {
  bool check = false;
  GlobalKey<FormState> key = GlobalKey<FormState>();

  TextEditingController cliente = TextEditingController();
  TextEditingController ruc = TextEditingController();
  TextEditingController direc = TextEditingController();
  TextEditingController obs = TextEditingController();

  press(LatLng lt) {
    if (key.currentState!.validate()) {
      ServerRemote.addClientWithLocation(
          cliente.text, direc.text, obs.text, lt, Int64.parseInt(ruc.text));
    }
  }

  @override
  void onReady() {
    super.onReady();
  }
}
