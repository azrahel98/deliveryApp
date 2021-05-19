import 'package:app1/controllers/map.dart';
import 'package:app1/widgets/map/controls/location.dart';
import 'package:app1/widgets/map/controls/searchbar.dart';
import 'package:app1/widgets/map/controls/tools.dart';
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
              // Obx(
              //   () => (_.search == true)
              //       ? Positioned(
              //           child: SafeArea(
              //             child: Align(
              //               alignment: Alignment.topLeft,
              //               child: Padding(
              //                 padding: EdgeInsets.only(
              //                     top: size.height / 20,
              //                     right: size.width / 5,
              //                     left: size.width / 28),
              //                 child: SearchBar(),
              //               ),
              //             ),
              //             top: true,
              //           ),
              //         )
              //       : SizedBox(),
              // ),
              Positioned(
                child: SafeArea(
                  top: true,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: 20, top: size.height / 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          (_.locenable == false) ? LocationInMap() : SizedBox(),
                          Obx(
                            () => SearchBar(
                                search: _.search,
                                size: size,
                                onpress: () => _.search = !_.search),
                          ),
                          ToolsInMap(
                              onpress: _.centerCamera,
                              icon: Icons.center_focus_weak),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
