import 'package:app1/widgets/map/marker/painter.dart';
import 'package:flutter/material.dart';

class CustomMakerPaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: CustomPaint(
        painter: MyPainter(label: "s"),
      ),
    );
  }
}
