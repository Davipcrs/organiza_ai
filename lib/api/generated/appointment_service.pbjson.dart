//
//  Generated code. Do not modify.
//  source: appointment_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use emptyAppointmentDescriptor instead')
const emptyAppointment$json = {
  '1': 'emptyAppointment',
};

/// Descriptor for `emptyAppointment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyAppointmentDescriptor = $convert.base64Decode(
    'ChBlbXB0eUFwcG9pbnRtZW50');

@$core.Deprecated('Use appointmentMessageDescriptor instead')
const AppointmentMessage$json = {
  '1': 'AppointmentMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'start', '3': 4, '4': 1, '5': 9, '10': 'start'},
    {'1': 'end', '3': 5, '4': 1, '5': 9, '10': 'end'},
    {'1': 'canceled', '3': 6, '4': 1, '5': 8, '10': 'canceled'},
    {'1': 'color', '3': 7, '4': 1, '5': 3, '10': 'color'},
  ],
};

/// Descriptor for `AppointmentMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appointmentMessageDescriptor = $convert.base64Decode(
    'ChJBcHBvaW50bWVudE1lc3NhZ2USDgoCaWQYASABKANSAmlkEhQKBXRpdGxlGAIgASgJUgV0aX'
    'RsZRISCgRkZXNjGAMgASgJUgRkZXNjEhQKBXN0YXJ0GAQgASgJUgVzdGFydBIQCgNlbmQYBSAB'
    'KAlSA2VuZBIaCghjYW5jZWxlZBgGIAEoCFIIY2FuY2VsZWQSFAoFY29sb3IYByABKANSBWNvbG'
    '9y');

@$core.Deprecated('Use appointmentResponseDescriptor instead')
const AppointmentResponse$json = {
  '1': 'AppointmentResponse',
  '2': [
    {'1': 'appointment', '3': 1, '4': 3, '5': 11, '6': '.organiza_ai.AppointmentMessage', '10': 'appointment'},
  ],
};

/// Descriptor for `AppointmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appointmentResponseDescriptor = $convert.base64Decode(
    'ChNBcHBvaW50bWVudFJlc3BvbnNlEkEKC2FwcG9pbnRtZW50GAEgAygLMh8ub3JnYW5pemFfYW'
    'kuQXBwb2ludG1lbnRNZXNzYWdlUgthcHBvaW50bWVudA==');

@$core.Deprecated('Use addAppointmentMessageDescriptor instead')
const AddAppointmentMessage$json = {
  '1': 'AddAppointmentMessage',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'start', '3': 3, '4': 1, '5': 9, '10': 'start'},
    {'1': 'end', '3': 4, '4': 1, '5': 9, '10': 'end'},
    {'1': 'canceled', '3': 5, '4': 1, '5': 8, '10': 'canceled'},
    {'1': 'color', '3': 6, '4': 1, '5': 3, '10': 'color'},
  ],
};

/// Descriptor for `AddAppointmentMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAppointmentMessageDescriptor = $convert.base64Decode(
    'ChVBZGRBcHBvaW50bWVudE1lc3NhZ2USFAoFdGl0bGUYASABKAlSBXRpdGxlEhIKBGRlc2MYAi'
    'ABKAlSBGRlc2MSFAoFc3RhcnQYAyABKAlSBXN0YXJ0EhAKA2VuZBgEIAEoCVIDZW5kEhoKCGNh'
    'bmNlbGVkGAUgASgIUghjYW5jZWxlZBIUCgVjb2xvchgGIAEoA1IFY29sb3I=');

@$core.Deprecated('Use searchAppointmentRequestDescriptor instead')
const SearchAppointmentRequest$json = {
  '1': 'SearchAppointmentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `SearchAppointmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchAppointmentRequestDescriptor = $convert.base64Decode(
    'ChhTZWFyY2hBcHBvaW50bWVudFJlcXVlc3QSDgoCaWQYASABKANSAmlk');

