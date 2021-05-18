import 'dart:ui';

import 'package:app1/controllers/map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      restorationId: "hola==================================",
      body: GetBuilder<MapController>(
        builder: (MapController _) {
          return Stack(
            children: [
              GoogleMap(
                initialCameraPosition: _.cameraPosition,
                onMapCreated: _.onCreateMap,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                trafficEnabled: false,
                myLocationEnabled: true,
                markers: _.marker,
                mapToolbarEnabled: false,
                onLongPress: _.onlongTap,
              ),
              Positioned(
                left: size.width / 1.19,
                top: size.height / 15,
                child: _.locenable != true
                    ? Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            tileMode: TileMode.mirror,
                            colors: [
                              Colors.redAccent,
                              Colors.white,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.red,
                                blurRadius: 6,
                                spreadRadius: 0),
                          ],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.location_off_rounded,
                          size: 35,
                          color: Color(0xFFD00D0B),
                        ),
                      )
                    : Container(),
              )
            ],
          );
        },
      ),
    );
  }
}
