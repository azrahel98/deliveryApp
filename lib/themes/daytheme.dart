import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: GoogleFonts.montserrat(letterSpacing: 2).fontFamily,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Colors.red,
      ),
      headline1: TextStyle(
        color: Colors.red,
      ),
      headline2: TextStyle(
        color: Colors.deepPurpleAccent,
      ),
      headline3: TextStyle(
        color: Colors.blue,
      ),
      headline4: TextStyle(
        color: Colors.pink,
      ),
      headline5: TextStyle(
        color: Colors.green,
      ),
      headline6: TextStyle(
        color: Colors.black,
      ),
      overline: TextStyle(
        color: Colors.orange,
      ),

      //MODAL TITLE
      subtitle1: TextStyle(
        color: Color(0xFFF4F4F6),
        letterSpacing: 2,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(),
  );
}
