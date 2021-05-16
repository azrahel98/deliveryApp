import 'dart:ui';

import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  final String label;

  MyPainter({required this.label});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final RRect rRect =
        RRect.fromRectAndRadius(rect, Radius.circular(size.height / 2));

    paint.color = Colors.white;
    paint.shader = RadialGradient(
      colors: [
        Colors.blue,
        Colors.white,
        Colors.white,
        Colors.lightBlue,
        Colors.lightBlueAccent,
      ],
    ).createShader(rect);
    canvas.drawRRect(rRect, paint);

    paint.color = Colors.blue;
    paint.shader = null;
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.height / 4, paint);

    // final text = TextPainter(
    //   text: TextSpan(text: this.label, style: TextStyle(color: Colors.black)),
    //   maxLines: 2,
    //   textDirection: TextDirection.ltr,
    //   textAlign: TextAlign.left,
    // );
    // text.layout(minWidth: 0, maxWidth: size.width - size.width / 5);
    // text.paint(
    //   canvas,
    //   Offset(size.width / 4.5, size.height / 2 - text.height / 2),
    // );
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
}
