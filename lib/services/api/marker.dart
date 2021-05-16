import 'dart:ffi';
import 'dart:typed_data';
import 'dart:ui';
import 'package:app1/widgets/map/marker/painter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerApp {
  static Future<Uint8List> myPainter() async {
    PictureRecorder recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    MyPainter myPainter =
        MyPainter(label: "Usuario de prueva de mierda Jaa :v");
    myPainter.paint(canvas, Size(50, 50));
    var image = await recorder.endRecording().toImage(50, 50);
    var bydata = await image.toByteData(format: ImageByteFormat.png);
    return bydata!.buffer.asUint8List();
  }

  static Future<Marker> addMaker(LatLng lt, String nombre) async {
    var marke = Marker(
        markerId: MarkerId(lt.toString()),
        position: lt,
        infoWindow: InfoWindow(title: nombre),
        icon: BitmapDescriptor.fromBytes(await MarkerApp.myPainter()));
    return marke;
  }
}
