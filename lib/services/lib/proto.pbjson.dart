///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use usuarioDescriptor instead')
const Usuario$json = const {
  '1': 'Usuario',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'pass', '3': 3, '4': 1, '5': 9, '10': 'pass'},
    const {'1': 'admin', '3': 4, '4': 1, '5': 5, '10': 'admin'},
    const {'1': 'fechacr', '3': 5, '4': 1, '5': 9, '10': 'fechacr'},
  ],
};

/// Descriptor for `Usuario`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usuarioDescriptor = $convert.base64Decode('CgdVc3VhcmlvEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBHBhc3MYAyABKAlSBHBhc3MSFAoFYWRtaW4YBCABKAVSBWFkbWluEhgKB2ZlY2hhY3IYBSABKAlSB2ZlY2hhY3I=');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'pass', '3': 2, '4': 1, '5': 9, '10': 'pass'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRwYXNzGAIgASgJUgRwYXNz');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'Usuario', '3': 1, '4': 1, '5': 11, '6': '.deliverypro.Usuario', '10': 'Usuario'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEi4KB1VzdWFyaW8YASABKAsyFC5kZWxpdmVyeXByby5Vc3VhcmlvUgdVc3VhcmlvEhQKBXRva2VuGAIgASgJUgV0b2tlbg==');
