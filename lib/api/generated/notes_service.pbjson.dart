//
//  Generated code. Do not modify.
//  source: notes_service.proto
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

@$core.Deprecated('Use noteMessageDescriptor instead')
const NoteMessage$json = {
  '1': 'NoteMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'created', '3': 4, '4': 1, '5': 9, '10': 'created'},
    {'1': 'deadline', '3': 5, '4': 1, '5': 9, '10': 'deadline'},
  ],
};

/// Descriptor for `NoteMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteMessageDescriptor = $convert.base64Decode(
    'CgtOb3RlTWVzc2FnZRIOCgJpZBgBIAEoA1ICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhIKBG'
    'Rlc2MYAyABKAlSBGRlc2MSGAoHY3JlYXRlZBgEIAEoCVIHY3JlYXRlZBIaCghkZWFkbGluZRgF'
    'IAEoCVIIZGVhZGxpbmU=');

@$core.Deprecated('Use addNoteDescriptor instead')
const AddNote$json = {
  '1': 'AddNote',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'created', '3': 3, '4': 1, '5': 9, '10': 'created'},
    {'1': 'deadline', '3': 4, '4': 1, '5': 9, '10': 'deadline'},
  ],
};

/// Descriptor for `AddNote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addNoteDescriptor = $convert.base64Decode(
    'CgdBZGROb3RlEhQKBXRpdGxlGAEgASgJUgV0aXRsZRISCgRkZXNjGAIgASgJUgRkZXNjEhgKB2'
    'NyZWF0ZWQYAyABKAlSB2NyZWF0ZWQSGgoIZGVhZGxpbmUYBCABKAlSCGRlYWRsaW5l');

@$core.Deprecated('Use noteResponseDescriptor instead')
const NoteResponse$json = {
  '1': 'NoteResponse',
  '2': [
    {'1': 'note', '3': 1, '4': 3, '5': 11, '6': '.organiza_ai.NoteMessage', '10': 'note'},
  ],
};

/// Descriptor for `NoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteResponseDescriptor = $convert.base64Decode(
    'CgxOb3RlUmVzcG9uc2USLAoEbm90ZRgBIAMoCzIYLm9yZ2FuaXphX2FpLk5vdGVNZXNzYWdlUg'
    'Rub3Rl');

@$core.Deprecated('Use searchNoteRequestDescriptor instead')
const SearchNoteRequest$json = {
  '1': 'SearchNoteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `SearchNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchNoteRequestDescriptor = $convert.base64Decode(
    'ChFTZWFyY2hOb3RlUmVxdWVzdBIOCgJpZBgBIAEoA1ICaWQ=');

