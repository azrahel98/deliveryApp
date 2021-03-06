///
//  Generated code. Do not modify.
//  source: location.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use empresaDescriptor instead')
const Empresa$json = const {
  '1': 'Empresa',
  '2': const [
    const {'1': 'id_empresa', '3': 1, '4': 1, '5': 5, '10': 'idEmpresa'},
    const {'1': 'nombre', '3': 2, '4': 1, '5': 9, '10': 'nombre'},
    const {'1': 'ruc', '3': 3, '4': 1, '5': 3, '10': 'ruc'},
    const {'1': 'telf', '3': 4, '4': 1, '5': 9, '10': 'telf'},
    const {'1': 'contacto', '3': 5, '4': 1, '5': 9, '10': 'contacto'},
    const {'1': 'id_usuario', '3': 6, '4': 1, '5': 5, '10': 'idUsuario'},
  ],
};

/// Descriptor for `Empresa`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List empresaDescriptor = $convert.base64Decode('CgdFbXByZXNhEh0KCmlkX2VtcHJlc2EYASABKAVSCWlkRW1wcmVzYRIWCgZub21icmUYAiABKAlSBm5vbWJyZRIQCgNydWMYAyABKANSA3J1YxISCgR0ZWxmGAQgASgJUgR0ZWxmEhoKCGNvbnRhY3RvGAUgASgJUghjb250YWN0bxIdCgppZF91c3VhcmlvGAYgASgFUglpZFVzdWFyaW8=');
@$core.Deprecated('Use clienteDescriptor instead')
const Cliente$json = const {
  '1': 'Cliente',
  '2': const [
    const {'1': 'id_cliente', '3': 1, '4': 1, '5': 5, '10': 'idCliente'},
    const {'1': 'nombre', '3': 2, '4': 1, '5': 9, '10': 'nombre'},
    const {'1': 'ruc', '3': 3, '4': 1, '5': 3, '10': 'ruc'},
    const {'1': 'direccion', '3': 4, '4': 1, '5': 9, '10': 'direccion'},
    const {'1': 'id_empresa', '3': 5, '4': 1, '5': 5, '10': 'idEmpresa'},
  ],
};

/// Descriptor for `Cliente`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clienteDescriptor = $convert.base64Decode('CgdDbGllbnRlEh0KCmlkX2NsaWVudGUYASABKAVSCWlkQ2xpZW50ZRIWCgZub21icmUYAiABKAlSBm5vbWJyZRIQCgNydWMYAyABKANSA3J1YxIcCglkaXJlY2Npb24YBCABKAlSCWRpcmVjY2lvbhIdCgppZF9lbXByZXNhGAUgASgFUglpZEVtcHJlc2E=');
@$core.Deprecated('Use almacenDescriptor instead')
const Almacen$json = const {
  '1': 'Almacen',
  '2': const [
    const {'1': 'id_almacen', '3': 1, '4': 1, '5': 5, '10': 'idAlmacen'},
    const {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 3, '4': 1, '5': 1, '10': 'longitude'},
    const {'1': 'direccion', '3': 4, '4': 1, '5': 9, '10': 'direccion'},
    const {'1': 'observaciones', '3': 5, '4': 1, '5': 9, '10': 'observaciones'},
    const {'1': 'id_cliente', '3': 6, '4': 1, '5': 5, '10': 'idCliente'},
  ],
};

/// Descriptor for `Almacen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List almacenDescriptor = $convert.base64Decode('CgdBbG1hY2VuEh0KCmlkX2FsbWFjZW4YASABKAVSCWlkQWxtYWNlbhIaCghsYXRpdHVkZRgCIAEoAVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAMgASgBUglsb25naXR1ZGUSHAoJZGlyZWNjaW9uGAQgASgJUglkaXJlY2Npb24SJAoNb2JzZXJ2YWNpb25lcxgFIAEoCVINb2JzZXJ2YWNpb25lcxIdCgppZF9jbGllbnRlGAYgASgFUglpZENsaWVudGU=');
@$core.Deprecated('Use responseAlmacenDescriptor instead')
const ResponseAlmacen$json = const {
  '1': 'ResponseAlmacen',
  '2': const [
    const {'1': 'id_almacen', '3': 1, '4': 1, '5': 5, '10': 'idAlmacen'},
    const {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 3, '4': 1, '5': 1, '10': 'longitude'},
    const {'1': 'nombre', '3': 4, '4': 1, '5': 9, '10': 'nombre'},
  ],
};

/// Descriptor for `ResponseAlmacen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseAlmacenDescriptor = $convert.base64Decode('Cg9SZXNwb25zZUFsbWFjZW4SHQoKaWRfYWxtYWNlbhgBIAEoBVIJaWRBbG1hY2VuEhoKCGxhdGl0dWRlGAIgASgBUghsYXRpdHVkZRIcCglsb25naXR1ZGUYAyABKAFSCWxvbmdpdHVkZRIWCgZub21icmUYBCABKAlSBm5vbWJyZQ==');
@$core.Deprecated('Use requestClientDescriptor instead')
const RequestClient$json = const {
  '1': 'RequestClient',
  '2': const [
    const {'1': 'id_cliente', '3': 1, '4': 1, '5': 5, '10': 'idCliente'},
  ],
};

/// Descriptor for `RequestClient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestClientDescriptor = $convert.base64Decode('Cg1SZXF1ZXN0Q2xpZW50Eh0KCmlkX2NsaWVudGUYASABKAVSCWlkQ2xpZW50ZQ==');
@$core.Deprecated('Use requesCreateClientDescriptor instead')
const RequesCreateClient$json = const {
  '1': 'RequesCreateClient',
  '2': const [
    const {'1': 'nombre', '3': 1, '4': 1, '5': 9, '10': 'nombre'},
    const {'1': 'ruc', '3': 2, '4': 1, '5': 3, '10': 'ruc'},
    const {'1': 'direccion', '3': 3, '4': 1, '5': 9, '10': 'direccion'},
    const {'1': 'id_empresa', '3': 4, '4': 1, '5': 5, '10': 'idEmpresa'},
  ],
};

/// Descriptor for `RequesCreateClient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requesCreateClientDescriptor = $convert.base64Decode('ChJSZXF1ZXNDcmVhdGVDbGllbnQSFgoGbm9tYnJlGAEgASgJUgZub21icmUSEAoDcnVjGAIgASgDUgNydWMSHAoJZGlyZWNjaW9uGAMgASgJUglkaXJlY2Npb24SHQoKaWRfZW1wcmVzYRgEIAEoBVIJaWRFbXByZXNh');
@$core.Deprecated('Use requestAddLocationDescriptor instead')
const RequestAddLocation$json = const {
  '1': 'RequestAddLocation',
  '2': const [
    const {'1': 'latitude', '3': 1, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 2, '4': 1, '5': 1, '10': 'longitude'},
    const {'1': 'direccion', '3': 3, '4': 1, '5': 9, '10': 'direccion'},
    const {'1': 'observaciones', '3': 4, '4': 1, '5': 9, '10': 'observaciones'},
    const {'1': 'id_cliente', '3': 5, '4': 1, '5': 5, '10': 'idCliente'},
  ],
};

/// Descriptor for `RequestAddLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestAddLocationDescriptor = $convert.base64Decode('ChJSZXF1ZXN0QWRkTG9jYXRpb24SGgoIbGF0aXR1ZGUYASABKAFSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgCIAEoAVIJbG9uZ2l0dWRlEhwKCWRpcmVjY2lvbhgDIAEoCVIJZGlyZWNjaW9uEiQKDW9ic2VydmFjaW9uZXMYBCABKAlSDW9ic2VydmFjaW9uZXMSHQoKaWRfY2xpZW50ZRgFIAEoBVIJaWRDbGllbnRl');
