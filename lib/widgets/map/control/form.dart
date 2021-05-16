import 'dart:typed_data';
import 'dart:ui';

import 'package:app1/controllers/map.dart';
import 'package:app1/services/api/grpc.dart';
import 'package:app1/services/api/marker.dart';

import 'package:app1/widgets/map/marker/painter.dart';
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

  press(LatLng lt) async {
    if (key.currentState!.validate()) {
      check = !check;
      update(['modal']);
      var markers = Get.find<MapController>().marker;
      markers.removeWhere((element) => element.markerId.value == "nuevo");

      bool result = await ServerRemote.addClientWithLocation(
          cliente.text, direc.text, obs.text, lt, Int64.parseInt(ruc.text));

      if (result) {
        markers.add(await MarkerApp.addMaker(lt, cliente.text));
        Get.find<MapController>().update();
        Get.back();
      } else {
        check = !check;

        update(['modal']);
      }
    }
  }

  @override
  void onReady() {
    super.onReady();
  }
}
