import 'package:app1/services/grcp/proto.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';

class ServerRemote {
  static final chanel = ClientChannel('35.247.198.174',
      port: 50051,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()));
  static final client = DeliveryAppClient(chanel);

  // static void callLocations() async {
  //   try {} catch (e) {
  //     var response =
  //   }
  // }
}
