//
//  Generated code. Do not modify.
//  source: todo_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use emptyDescriptor instead')
const empty$json = {
  '1': 'empty',
};

/// Descriptor for `empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVlbXB0eQ==');

@$core.Deprecated('Use todoMessageDescriptor instead')
const TodoMessage$json = {
  '1': 'TodoMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'deadLine', '3': 3, '4': 1, '5': 9, '10': 'deadLine'},
  ],
};

/// Descriptor for `TodoMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoMessageDescriptor = $convert.base64Decode(
    'CgtUb2RvTWVzc2FnZRIOCgJpZBgBIAEoA1ICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhoKCG'
    'RlYWRMaW5lGAMgASgJUghkZWFkTGluZQ==');

@$core.Deprecated('Use todoResponseDescriptor instead')
const TodoResponse$json = {
  '1': 'TodoResponse',
  '2': [
    {'1': 'todo', '3': 1, '4': 3, '5': 11, '6': '.organiza_ai.TodoMessage', '10': 'todo'},
  ],
};

/// Descriptor for `TodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoResponseDescriptor = $convert.base64Decode(
    'CgxUb2RvUmVzcG9uc2USLAoEdG9kbxgBIAMoCzIYLm9yZ2FuaXphX2FpLlRvZG9NZXNzYWdlUg'
    'R0b2Rv');

@$core.Deprecated('Use addTodoMessageDescriptor instead')
const AddTodoMessage$json = {
  '1': 'AddTodoMessage',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'deadLine', '3': 2, '4': 1, '5': 9, '10': 'deadLine'},
  ],
};

/// Descriptor for `AddTodoMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTodoMessageDescriptor = $convert.base64Decode(
    'Cg5BZGRUb2RvTWVzc2FnZRIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSGgoIZGVhZExpbmUYAiABKA'
    'lSCGRlYWRMaW5l');

@$core.Deprecated('Use searchTodoMessageDescriptor instead')
const SearchTodoMessage$json = {
  '1': 'SearchTodoMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `SearchTodoMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchTodoMessageDescriptor = $convert.base64Decode(
    'ChFTZWFyY2hUb2RvTWVzc2FnZRIOCgJpZBgBIAEoA1ICaWQ=');

