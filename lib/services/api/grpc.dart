import 'package:app1/services/grcp/proto.pbgrpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';

class ServerRemote {
  static final chanel = ClientChannel('35.247.198.174',
      port: 50051,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()));
  static final client = DeliveryAppClient(chanel);

  static void callLocations() async {
    print("object");
    var reqCliente = RequestClient(idCliente: 1);
    var response = client.clientesLocations(reqCliente,
        options: CallOptions(metadata: {"token": "adfadsfadsfadfssad"}));

    try {
      await for (var x in response) {
        print(x);
      }
    } catch (e) {
      print(e);
    }
  }

  static Future<Cliente?> addNewClient(
      String direccion, nombre, Int64 ruc) async {
    var request = RequesCreateClient(
        direccion: direccion, idEmpresa: 1, nombre: nombre, ruc: ruc);
    try {
      var response = await client.createClient(request,
          options: CallOptions(metadata: {
            "token":
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2MjEwMDM5ODUsIlVzZXJuYW1lIjoiYXpyYWVsIiwiQWRtaW4iOjF9.rf-R0u4bNyfAU6CMcZNacRnZehARP4Ad6TMmtUBnOnI"
          }));
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

    var response = await client.addAlmacen(req,
        options: CallOptions(metadata: {
          "token":
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2MjEwMDM5ODUsIlVzZXJuYW1lIjoiYXpyYWVsIiwiQWRtaW4iOjF9.rf-R0u4bNyfAU6CMcZNacRnZehARP4Ad6TMmtUBnOnI"
        }));
    print(response);
  }

  static Future<void> addClientWithLocation(
      String nombre, direccion, obs, LatLng lt, Int64 ruc) async {
    Cliente? iscreated = await addNewClient(direccion, nombre, ruc);
    if (iscreated == null) {
      print("ERror");
    } else {
      addClientLocation(iscreated, lt, obs);
    }
  }
}
