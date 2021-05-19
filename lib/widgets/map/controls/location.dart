import 'package:flutter/material.dart';

class LocationInMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          BoxShadow(color: Colors.red, blurRadius: 6, spreadRadius: 0),
        ],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(
        Icons.location_off_rounded,
        size: 35,
        color: Color(0xFFD00D0B),
      ),
    );
  }
}
