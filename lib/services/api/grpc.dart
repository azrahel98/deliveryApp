import 'package:app1/controllers/map.dart';
import 'package:app1/services/api/marker.dart';
import 'package:app1/services/lib/location.pb.dart';
import 'package:app1/services/lib/proto.pbgrpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';

class ServerRemote {
  static final channel = ClientChannel('35.247.198.174',
      port: 50051,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()));
  static final client = DeliveryAppLocationClient(channel);

  static String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTI2MTM2NTQsIlVzZXJuYW1lIjoiYXpyYWVsIiwiQWRtaW4iOjF9._XlvbUBf_ktmRR3topaCXXVuDtJ56til05KMZ4AhzfY";

  static CallOptions options = CallOptions(metadata: {"token": token});

  static Future<void> ubicacionesAlxClien(Set<Marker>? marker) async {
    var reqCliente = RequestClient(idCliente: 1);
    try {
      var response = client.clientesLocations(reqCliente, options: options);

      await for (var x in response) {
        marker!.add(
          await MarkerApp.addMaker(
              LatLng(x.latitude, x.longitude), "Id:${x.idCliente}"),
        );
      }
    } catch (e) {
      print("EROOOOOOOOOOR");
      print(e);
    }
  }

  static Future<Cliente?> addNewClient(
      String direccion, nombre, Int64 ruc) async {
    var request = RequesCreateClient(
        direccion: direccion, idEmpresa: 1, nombre: nombre, ruc: ruc);
    try {
      var response = await client.createClient(request, options: options);
      return response;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static void addClientLocation(Cliente cli, LatLng lat, String obs) async {
    var req = RequestAddLocation(
        direccion: cli.direccion,
        idCliente: cli.idCliente,
        latitude: lat.latitude,
        longitude: lat.longitude,
        observaciones: obs);

    var response = await client.addAlmacen(req, options: options);
    print(response);
  }

  static Future<bool> addClientWithLocation(
      String nombre, direccion, obs, LatLng lt, Int64 ruc) async {
    Cliente? iscreated = await addNewClient(direccion, nombre, ruc);
    if (iscreated == null) {
      return false;
    } else {
      addClientLocation(iscreated, lt, obs);
      return true;
    }
  }
}
