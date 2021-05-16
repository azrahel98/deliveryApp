import 'package:app1/widgets/map/control/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ModalButonc extends StatelessWidget {
  final LatLng lt;
  ModalButonc({required this.lt});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormController>(
      builder: (_) => Container(
        child: ElevatedButton(
          child: Text(
            "Agregar Cliente",
            style: GoogleFonts.montserrat(
              letterSpacing: 1.7,
              fontSize: 15,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
            _.press(lt);
          },
        ),
      ),
    );
  }
}
