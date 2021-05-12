import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalButonc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        onPressed: () {},
      ),
    );
  }
}
