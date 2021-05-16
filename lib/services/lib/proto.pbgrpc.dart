///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'proto.pb.dart' as $0;
import 'location.pb.dart' as $1;
export 'proto.pb.dart';

class DeliveryAppLoginClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/deliverypro.DeliveryAppLogin/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$create = $grpc.ClientMethod<$0.LoginRequest, $0.Usuario>(
      '/deliverypro.DeliveryAppLogin/Create',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Usuario.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$0.Usuario, $0.Usuario>(
      '/deliverypro.DeliveryAppLogin/GetUser',
      ($0.Usuario value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Usuario.fromBuffer(value));

  DeliveryAppLoginClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.Usuario> create($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.Usuario> getUser($0.Usuario request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }
}

abstract class DeliveryAppLoginServiceBase extends $grpc.Service {
  $core.String get $name => 'deliverypro.DeliveryAppLogin';

  DeliveryAppLoginServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.Usuario>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.Usuario value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Usuario, $0.Usuario>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Usuario.fromBuffer(value),
        ($0.Usuario value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.Usuario> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.Usuario> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Usuario> request) async {
    return getUser(call, await request);
  }

  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.Usuario> create(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.Usuario> getUser($grpc.ServiceCall call, $0.Usuario request);
}

class DeliveryAppLocationClient extends $grpc.Client {
  static final _$createClient =
      $grpc.ClientMethod<$1.RequesCreateClient, $1.Cliente>(
          '/deliverypro.DeliveryAppLocation/CreateClient',
          ($1.RequesCreateClient value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Cliente.fromBuffer(value));
  static final _$clientes = $grpc.ClientMethod<$1.RequestClient, $1.Cliente>(
      '/deliverypro.DeliveryAppLocation/Clientes',
      ($1.RequestClient value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Cliente.fromBuffer(value));
  static final _$addAlmacen =
      $grpc.ClientMethod<$1.RequestAddLocation, $1.Almacen>(
          '/deliverypro.DeliveryAppLocation/AddAlmacen',
          ($1.RequestAddLocation value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Almacen.fromBuffer(value));
  static final _$clientesLocations =
      $grpc.ClientMethod<$1.RequestClient, $1.Almacen>(
          '/deliverypro.DeliveryAppLocation/ClientesLocations',
          ($1.RequestClient value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Almacen.fromBuffer(value));

  DeliveryAppLocationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Cliente> createClient($1.RequesCreateClient request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createClient, request, options: options);
  }

  $grpc.ResponseStream<$1.Cliente> clientes($1.RequestClient request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$clientes, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.Almacen> addAlmacen($1.RequestAddLocation request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAlmacen, request, options: options);
  }

  $grpc.ResponseStream<$1.Almacen> clientesLocations($1.RequestClient request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$clientesLocations, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DeliveryAppLocationServiceBase extends $grpc.Service {
  $core.String get $name => 'deliverypro.DeliveryAppLocation';

  DeliveryAppLocationServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.RequesCreateClient, $1.Cliente>(
        'CreateClient',
        createClient_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RequesCreateClient.fromBuffer(value),
        ($1.Cliente value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RequestClient, $1.Cliente>(
        'Clientes',
        clientes_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.RequestClient.fromBuffer(value),
        ($1.Cliente value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RequestAddLocation, $1.Almacen>(
        'AddAlmacen',
        addAlmacen_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RequestAddLocation.fromBuffer(value),
        ($1.Almacen value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RequestClient, $1.Almacen>(
        'ClientesLocations',
        clientesLocations_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.RequestClient.fromBuffer(value),
        ($1.Almacen value) => value.writeToBuffer()));
  }

  $async.Future<$1.Cliente> createClient_Pre($grpc.ServiceCall call,
      $async.Future<$1.RequesCreateClient> request) async {
    return createClient(call, await request);
  }

  $async.Stream<$1.Cliente> clientes_Pre(
      $grpc.ServiceCall call, $async.Future<$1.RequestClient> request) async* {
    yield* clientes(call, await request);
  }

  $async.Future<$1.Almacen> addAlmacen_Pre($grpc.ServiceCall call,
      $async.Future<$1.RequestAddLocation> request) async {
    return addAlmacen(call, await request);
  }

  $async.Stream<$1.Almacen> clientesLocations_Pre(
      $grpc.ServiceCall call, $async.Future<$1.RequestClient> request) async* {
    yield* clientesLocations(call, await request);
  }

  $async.Future<$1.Cliente> createClient(
      $grpc.ServiceCall call, $1.RequesCreateClient request);
  $async.Stream<$1.Cliente> clientes(
      $grpc.ServiceCall call, $1.RequestClient request);
  $async.Future<$1.Almacen> addAlmacen(
      $grpc.ServiceCall call, $1.RequestAddLocation request);
  $async.Stream<$1.Almacen> clientesLocations(
      $grpc.ServiceCall call, $1.RequestClient request);
}
