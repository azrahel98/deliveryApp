import 'package:app1/widgets/map/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'control/form.dart';

class AlertCustomDialog extends StatelessWidget {
  final LatLng lt;

  AlertCustomDialog({required this.lt});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      contentPadding: EdgeInsets.all(15),
      insetPadding: EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      elevation: 0,
      buttonPadding: EdgeInsets.all(0),
      actionsPadding: EdgeInsets.zero,
      content: GetBuilder<FormController>(
        id: 'modal',
        init: FormController(),
        builder: (_) => Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width / 60),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: size.width,
            // height: size.height,
            child: (_.check != true)
                ? FormDialog(lt: lt)
                : Container(
                    height: size.height / 2,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
