import 'package:app1/widgets/map/marker/customMarker.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: CustomMakerPaint(),
      ),
    );
  }
}
