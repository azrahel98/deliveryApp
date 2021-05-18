import 'dart:async';
import 'package:app1/services/api/grpc.dart';
import 'package:app1/widgets/map/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapController extends GetxController {
  Completer<GoogleMapController> _controller = Completer.sync();

  bool locenable = false;
  GoogleMapController? _mapController;
  GoogleMapController? get mcontroller => _mapController;
  Location _location = Location();
  CameraPosition cameraPosition = CameraPosition(target: LatLng(12.45, 15.64));

  Set<Marker> marker = {};

  Future<void> onCreateMap(GoogleMapController controller) async {
    var isComplete = _controller.isCompleted;
    if (!isComplete) {
      _controller.complete(controller);
    }
    _mapController = controller;
    await _checkPermiss();
    final style =
        await rootBundle.loadString("assets/stylemaps/uberligth.json");
    _mapController?.setMapStyle(style);
  }

  _checkPermiss() async {
    bool enabl = await _location.serviceEnabled();
    locenable = enabl;
  }

  _updateInitLocation() {
    Timer.periodic(
      Duration(
        seconds: 2,
      ),
      (timer) async {
        bool enable = await _location.serviceEnabled();
        if (enable) {
          LocationData location = await _location.getLocation();
          cameraPosition = CameraPosition(
              target: LatLng(location.latitude!, location.longitude!),
              zoom: 14);
          await _mapController?.animateCamera(CameraUpdate.newLatLngZoom(
              LatLng(location.latitude!, location.longitude!), 15));
          locenable = true;
          update();
          timer.cancel();
        }
      },
    );
  }

  ///
  addnewMarker(LatLng lat) {
    Marker mark = Marker(
        markerId: MarkerId("nuevo"),
        position: lat,
        icon: BitmapDescriptor.defaultMarkerWithHue(2),
        infoWindow: InfoWindow(title: "Nuevo Cliente ?"),
        onTap: () {
          Get.dialog(
            AlertCustomDialog(lt: lat),
            useSafeArea: false,
            transitionDuration: Duration(seconds: 1),
            transitionCurve: Curves.easeInOutSine,
            barrierDismissible: true,
            barrierColor: Color(0x01000000),
          );
        });
    marker.add(mark);
  }

  onlongTap(LatLng lat) {
    marker.removeWhere((element) => element.markerId.value == "nuevo");
    addnewMarker(lat);
    update();
  }

  @override
  void onInit() async {
    await ServerRemote.ubicacionesAlxClien(marker);
    update();

    _updateInitLocation();
    super.onInit();
  }
}
