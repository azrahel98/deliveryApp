import 'package:app1/controllers/map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<MapController>(
        builder: (MapController _) {
          return GoogleMap(
            initialCameraPosition: _.cameraPosition,
            onMapCreated: _.onCreateMap,
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            trafficEnabled: false,
            myLocationEnabled: true,
            markers: _.marker,
            onLongPress: _.onlongTap,
          );
        },
      ),
    );
  }
}
