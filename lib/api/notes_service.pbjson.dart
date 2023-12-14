//
//  Generated code. Do not modify.
//  source: lib/api/notes_service.proto
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

@$core.Deprecated('Use noteDescriptor instead')
const Note$json = {
  '1': 'Note',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'created', '3': 4, '4': 1, '5': 9, '10': 'created'},
    {'1': 'deadline', '3': 5, '4': 1, '5': 9, '10': 'deadline'},
  ],
};

/// Descriptor for `Note`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteDescriptor = $convert.base64Decode(
    'CgROb3RlEg4KAmlkGAEgASgDUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSEgoEZGVzYxgDIA'
    'EoCVIEZGVzYxIYCgdjcmVhdGVkGAQgASgJUgdjcmVhdGVkEhoKCGRlYWRsaW5lGAUgASgJUghk'
    'ZWFkbGluZQ==');

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
    {'1': 'note', '3': 1, '4': 3, '5': 11, '6': '.organiza_ai.Note', '10': 'note'},
  ],
};

/// Descriptor for `NoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteResponseDescriptor = $convert.base64Decode(
    'CgxOb3RlUmVzcG9uc2USJQoEbm90ZRgBIAMoCzIRLm9yZ2FuaXphX2FpLk5vdGVSBG5vdGU=');

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

const $core.Map<$core.String, $core.dynamic> NotesServicesServiceBase$json = {
  '1': 'NotesServices',
  '2': [
    {'1': 'getNote', '2': '.organiza_ai.SearchNoteRequest', '3': '.organiza_ai.Note'},
    {'1': 'getAllNotes', '2': '.organiza_ai.empty', '3': '.organiza_ai.NoteResponse'},
    {'1': 'addNote', '2': '.organiza_ai.AddNote', '3': '.organiza_ai.empty'},
    {'1': 'removeNote', '2': '.organiza_ai.SearchNoteRequest', '3': '.organiza_ai.Note'},
    {'1': 'editNote', '2': '.organiza_ai.Note', '3': '.organiza_ai.Note'},
  ],
};

@$core.Deprecated('Use notesServicesServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> NotesServicesServiceBase$messageJson = {
  '.organiza_ai.SearchNoteRequest': SearchNoteRequest$json,
  '.organiza_ai.Note': Note$json,
  '.organiza_ai.empty': empty$json,
  '.organiza_ai.NoteResponse': NoteResponse$json,
  '.organiza_ai.AddNote': AddNote$json,
};

/// Descriptor for `NotesServices`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List notesServicesServiceDescriptor = $convert.base64Decode(
    'Cg1Ob3Rlc1NlcnZpY2VzEjwKB2dldE5vdGUSHi5vcmdhbml6YV9haS5TZWFyY2hOb3RlUmVxdW'
    'VzdBoRLm9yZ2FuaXphX2FpLk5vdGUSPAoLZ2V0QWxsTm90ZXMSEi5vcmdhbml6YV9haS5lbXB0'
    'eRoZLm9yZ2FuaXphX2FpLk5vdGVSZXNwb25zZRIzCgdhZGROb3RlEhQub3JnYW5pemFfYWkuQW'
    'RkTm90ZRoSLm9yZ2FuaXphX2FpLmVtcHR5Ej8KCnJlbW92ZU5vdGUSHi5vcmdhbml6YV9haS5T'
    'ZWFyY2hOb3RlUmVxdWVzdBoRLm9yZ2FuaXphX2FpLk5vdGUSMAoIZWRpdE5vdGUSES5vcmdhbm'
    'l6YV9haS5Ob3RlGhEub3JnYW5pemFfYWkuTm90ZQ==');

