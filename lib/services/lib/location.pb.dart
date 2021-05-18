///
//  Generated code. Do not modify.
//  source: location.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Empresa extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empresa', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'deliverypro.location'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idEmpresa', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombre')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruc')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'telf')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contacto')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idUsuario', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Empresa._() : super();
  factory Empresa({
    $core.int? idEmpresa,
    $core.String? nombre,
    $fixnum.Int64? ruc,
    $core.String? telf,
    $core.String? contacto,
    $core.int? idUsuario,
  }) {
    final _result = create();
    if (idEmpresa != null) {
      _result.idEmpresa = idEmpresa;
    }
    if (nombre != null) {
      _result.nombre = nombre;
    }
    if (ruc != null) {
      _result.ruc = ruc;
    }
    if (telf != null) {
      _result.telf = telf;
    }
    if (contacto != null) {
      _result.contacto = contacto;
    }
    if (idUsuario != null) {
      _result.idUsuario = idUsuario;
    }
    return _result;
  }
  factory Empresa.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empresa.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empresa clone() => Empresa()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empresa copyWith(void Function(Empresa) updates) => super.copyWith((message) => updates(message as Empresa)) as Empresa; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empresa create() => Empresa._();
  Empresa createEmptyInstance() => create();
  static $pb.PbList<Empresa> createRepeated() => $pb.PbList<Empresa>();
  @$core.pragma('dart2js:noInline')
  static Empresa getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empresa>(create);
  static Empresa? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idEmpresa => $_getIZ(0);
  @$pb.TagNumber(1)
  set idEmpresa($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdEmpresa() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdEmpresa() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombre => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombre($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombre() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombre() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ruc => $_getI64(2);
  @$pb.TagNumber(3)
  set ruc($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRuc() => $_has(2);
  @$pb.TagNumber(3)
  void clearRuc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get telf => $_getSZ(3);
  @$pb.TagNumber(4)
  set telf($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTelf() => $_has(3);
  @$pb.TagNumber(4)
  void clearTelf() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contacto => $_getSZ(4);
  @$pb.TagNumber(5)
  set contacto($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContacto() => $_has(4);
  @$pb.TagNumber(5)
  void clearContacto() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get idUsuario => $_getIZ(5);
  @$pb.TagNumber(6)
  set idUsuario($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIdUsuario() => $_has(5);
  @$pb.TagNumber(6)
  void clearIdUsuario() => clearField(6);
}

class Cliente extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Cliente', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'deliverypro.location'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idCliente', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombre')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruc')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direccion')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idEmpresa', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Cliente._() : super();
  factory Cliente({
    $core.int? idCliente,
    $core.String? nombre,
    $fixnum.Int64? ruc,
    $core.String? direccion,
    $core.int? idEmpresa,
  }) {
    final _result = create();
    if (idCliente != null) {
      _result.idCliente = idCliente;
    }
    if (nombre != null) {
      _result.nombre = nombre;
    }
    if (ruc != null) {
      _result.ruc = ruc;
    }
    if (direccion != null) {
      _result.direccion = direccion;
    }
    if (idEmpresa != null) {
      _result.idEmpresa = idEmpresa;
    }
    return _result;
  }
  factory Cliente.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cliente.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cliente clone() => Cliente()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cliente copyWith(void Function(Cliente) updates) => super.copyWith((message) => updates(message as Cliente)) as Cliente; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cliente create() => Cliente._();
  Cliente createEmptyInstance() => create();
  static $pb.PbList<Cliente> createRepeated() => $pb.PbList<Cliente>();
  @$core.pragma('dart2js:noInline')
  static Cliente getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cliente>(create);
  static Cliente? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idCliente => $_getIZ(0);
  @$pb.TagNumber(1)
  set idCliente($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdCliente() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdCliente() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nombre => $_getSZ(1);
  @$pb.TagNumber(2)
  set nombre($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNombre() => $_has(1);
  @$pb.TagNumber(2)
  void clearNombre() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ruc => $_getI64(2);
  @$pb.TagNumber(3)
  set ruc($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRuc() => $_has(2);
  @$pb.TagNumber(3)
  void clearRuc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get direccion => $_getSZ(3);
  @$pb.TagNumber(4)
  set direccion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDireccion() => $_has(3);
  @$pb.TagNumber(4)
  void clearDireccion() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get idEmpresa => $_getIZ(4);
  @$pb.TagNumber(5)
  set idEmpresa($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIdEmpresa() => $_has(4);
  @$pb.TagNumber(5)
  void clearIdEmpresa() => clearField(5);
}

class Almacen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Almacen', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'deliverypro.location'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idAlmacen', $pb.PbFieldType.O3)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OD)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direccion')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'observaciones')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idCliente', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Almacen._() : super();
  factory Almacen({
    $core.int? idAlmacen,
    $core.double? latitude,
    $core.double? longitude,
    $core.String? direccion,
    $core.String? observaciones,
    $core.int? idCliente,
  }) {
    final _result = create();
    if (idAlmacen != null) {
      _result.idAlmacen = idAlmacen;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (direccion != null) {
      _result.direccion = direccion;
    }
    if (observaciones != null) {
      _result.observaciones = observaciones;
    }
    if (idCliente != null) {
      _result.idCliente = idCliente;
    }
    return _result;
  }
  factory Almacen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Almacen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Almacen clone() => Almacen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Almacen copyWith(void Function(Almacen) updates) => super.copyWith((message) => updates(message as Almacen)) as Almacen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Almacen create() => Almacen._();
  Almacen createEmptyInstance() => create();
  static $pb.PbList<Almacen> createRepeated() => $pb.PbList<Almacen>();
  @$core.pragma('dart2js:noInline')
  static Almacen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Almacen>(create);
  static Almacen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idAlmacen => $_getIZ(0);
  @$pb.TagNumber(1)
  set idAlmacen($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdAlmacen() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdAlmacen() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latitude => $_getN(1);
  @$pb.TagNumber(2)
  set latitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get longitude => $_getN(2);
  @$pb.TagNumber(3)
  set longitude($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongitude() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get direccion => $_getSZ(3);
  @$pb.TagNumber(4)
  set direccion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDireccion() => $_has(3);
  @$pb.TagNumber(4)
  void clearDireccion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get observaciones => $_getSZ(4);
  @$pb.TagNumber(5)
  set observaciones($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasObservaciones() => $_has(4);
  @$pb.TagNumber(5)
  void clearObservaciones() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get idCliente => $_getIZ(5);
  @$pb.TagNumber(6)
  set idCliente($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIdCliente() => $_has(5);
  @$pb.TagNumber(6)
  void clearIdCliente() => clearField(6);
}

class ResponseAlmacen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResponseAlmacen', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'deliverypro.location'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idAlmacen', $pb.PbFieldType.O3)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OD)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombre')
    ..hasRequiredFields = false
  ;

  ResponseAlmacen._() : super();
  factory ResponseAlmacen({
    $core.int? idAlmacen,
    $core.double? latitude,
    $core.double? longitude,
    $core.String? nombre,
  }) {
    final _result = create();
    if (idAlmacen != null) {
      _result.idAlmacen = idAlmacen;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (nombre != null) {
      _result.nombre = nombre;
    }
    return _result;
  }
  factory ResponseAlmacen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseAlmacen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseAlmacen clone() => ResponseAlmacen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseAlmacen copyWith(void Function(ResponseAlmacen) updates) => super.copyWith((message) => updates(message as ResponseAlmacen)) as ResponseAlmacen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseAlmacen create() => ResponseAlmacen._();
  ResponseAlmacen createEmptyInstance() => create();
  static $pb.PbList<ResponseAlmacen> createRepeated() => $pb.PbList<ResponseAlmacen>();
  @$core.pragma('dart2js:noInline')
  static ResponseAlmacen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseAlmacen>(create);
  static ResponseAlmacen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idAlmacen => $_getIZ(0);
  @$pb.TagNumber(1)
  set idAlmacen($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdAlmacen() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdAlmacen() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latitude => $_getN(1);
  @$pb.TagNumber(2)
  set latitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get longitude => $_getN(2);
  @$pb.TagNumber(3)
  set longitude($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongitude() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nombre => $_getSZ(3);
  @$pb.TagNumber(4)
  set nombre($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNombre() => $_has(3);
  @$pb.TagNumber(4)
  void clearNombre() => clearField(4);
}

class RequestClient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestClient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'deliverypro.location'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idCliente', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RequestClient._() : super();
  factory RequestClient({
    $core.int? idCliente,
  }) {
    final _result = create();
    if (idCliente != null) {
      _result.idCliente = idCliente;
    }
    return _result;
  }
  factory RequestClient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestClient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestClient clone() => RequestClient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestClient copyWith(void Function(RequestClient) updates) => super.copyWith((message) => updates(message as RequestClient)) as RequestClient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestClient create() => RequestClient._();
  RequestClient createEmptyInstance() => create();
  static $pb.PbList<RequestClient> createRepeated() => $pb.PbList<RequestClient>();
  @$core.pragma('dart2js:noInline')
  static RequestClient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestClient>(create);
  static RequestClient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idCliente => $_getIZ(0);
  @$pb.TagNumber(1)
  set idCliente($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdCliente() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdCliente() => clearField(1);
}

class RequesCreateClient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequesCreateClient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'deliverypro.location'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nombre')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruc')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direccion')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idEmpresa', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RequesCreateClient._() : super();
  factory RequesCreateClient({
    $core.String? nombre,
    $fixnum.Int64? ruc,
    $core.String? direccion,
    $core.int? idEmpresa,
  }) {
    final _result = create();
    if (nombre != null) {
      _result.nombre = nombre;
    }
    if (ruc != null) {
      _result.ruc = ruc;
    }
    if (direccion != null) {
      _result.direccion = direccion;
    }
    if (idEmpresa != null) {
      _result.idEmpresa = idEmpresa;
    }
    return _result;
  }
  factory RequesCreateClient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequesCreateClient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequesCreateClient clone() => RequesCreateClient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequesCreateClient copyWith(void Function(RequesCreateClient) updates) => super.copyWith((message) => updates(message as RequesCreateClient)) as RequesCreateClient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequesCreateClient create() => RequesCreateClient._();
  RequesCreateClient createEmptyInstance() => create();
  static $pb.PbList<RequesCreateClient> createRepeated() => $pb.PbList<RequesCreateClient>();
  @$core.pragma('dart2js:noInline')
  static RequesCreateClient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequesCreateClient>(create);
  static RequesCreateClient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nombre => $_getSZ(0);
  @$pb.TagNumber(1)
  set nombre($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNombre() => $_has(0);
  @$pb.TagNumber(1)
  void clearNombre() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ruc => $_getI64(1);
  @$pb.TagNumber(2)
  set ruc($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRuc() => $_has(1);
  @$pb.TagNumber(2)
  void clearRuc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get direccion => $_getSZ(2);
  @$pb.TagNumber(3)
  set direccion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDireccion() => $_has(2);
  @$pb.TagNumber(3)
  void clearDireccion() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get idEmpresa => $_getIZ(3);
  @$pb.TagNumber(4)
  set idEmpresa($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdEmpresa() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdEmpresa() => clearField(4);
}

class RequestAddLocation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestAddLocation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'deliverypro.location'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OD)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direccion')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'observaciones')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idCliente', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RequestAddLocation._() : super();
  factory RequestAddLocation({
    $core.double? latitude,
    $core.double? longitude,
    $core.String? direccion,
    $core.String? observaciones,
    $core.int? idCliente,
  }) {
    final _result = create();
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (direccion != null) {
      _result.direccion = direccion;
    }
    if (observaciones != null) {
      _result.observaciones = observaciones;
    }
    if (idCliente != null) {
      _result.idCliente = idCliente;
    }
    return _result;
  }
  factory RequestAddLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestAddLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestAddLocation clone() => RequestAddLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestAddLocation copyWith(void Function(RequestAddLocation) updates) => super.copyWith((message) => updates(message as RequestAddLocation)) as RequestAddLocation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestAddLocation create() => RequestAddLocation._();
  RequestAddLocation createEmptyInstance() => create();
  static $pb.PbList<RequestAddLocation> createRepeated() => $pb.PbList<RequestAddLocation>();
  @$core.pragma('dart2js:noInline')
  static RequestAddLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestAddLocation>(create);
  static RequestAddLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latitude => $_getN(0);
  @$pb.TagNumber(1)
  set latitude($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get direccion => $_getSZ(2);
  @$pb.TagNumber(3)
  set direccion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDireccion() => $_has(2);
  @$pb.TagNumber(3)
  void clearDireccion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get observaciones => $_getSZ(3);
  @$pb.TagNumber(4)
  set observaciones($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasObservaciones() => $_has(3);
  @$pb.TagNumber(4)
  void clearObservaciones() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get idCliente => $_getIZ(4);
  @$pb.TagNumber(5)
  set idCliente($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIdCliente() => $_has(4);
  @$pb.TagNumber(5)
  void clearIdCliente() => clearField(5);
}

