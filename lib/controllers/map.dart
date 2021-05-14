import 'dart:async';
import 'package:app1/services/api/grpc.dart';
import 'package:app1/widgets/map/modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapController extends GetxController {
  Completer<GoogleMapController> _controller = Completer.sync();

  GoogleMapController? _mapController;
  GoogleMapController? get mcontroller => _mapController;
  Location _location = Location();

  Set<Marker> marker = {};
  Timer? _timer;

  Future<void> onCreateMap(GoogleMapController controller) async {
    var isComplete = _controller.isCompleted;
    if (!isComplete) {
      _controller.complete(controller);
    }
    _mapController = controller;
  }

  _checkPermiss() async {
    bool enabl = await _location.serviceEnabled();
    if (!enabl) {
      Get.snackbar(
        "GPS DESHABILITADO", // title
        "Activa el Gps para poder Acceder atu Ubicacion", // message
        icon: Icon(Icons.location_disabled_sharp),
        backgroundColor: Colors.red,
        isDismissible: false,
        snackStyle: SnackStyle.FLOATING,
      );
    }
  }

  _updateInitLocation() {
    _timer = Timer.periodic(
      Duration(
        seconds: 2,
      ),
      (timer) async {
        bool enable = await _location.serviceEnabled();
        if (enable) {
          LocationData location = await _location.getLocation();
          _mapController?.animateCamera(CameraUpdate.newLatLngZoom(
              LatLng(location.latitude!, location.longitude!), 15));
          timer.cancel();
        }
      },
    );
  }

  ///
  addnewMarker(LatLng lat) {
    print(lat);
    Marker mark = Marker(
        markerId: MarkerId("nuevo"),
        position: lat,
        icon: BitmapDescriptor.defaultMarkerWithHue(2),
        infoWindow: InfoWindow(title: "Se esta Creando un nuevo"),
        onTap: () {
          Get.dialog(
            AlertCustomDialog(lt: lat),
            useSafeArea: true,
            barrierDismissible: true,
            barrierColor: Color(0x01000000),
          );
        });
    marker.add(mark);
  }

  onlongTap(LatLng lat) {
    addnewMarker(lat);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    _updateInitLocation();
  }

  @override
  void onReady() async {
    await _checkPermiss();

    ServerRemote.callLocations();
    super.onReady();
  }
}
