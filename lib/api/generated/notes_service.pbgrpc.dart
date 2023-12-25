//
//  Generated code. Do not modify.
//  source: notes_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'notes_service.pb.dart' as $0;

export 'notes_service.pb.dart';

@$pb.GrpcServiceName('organiza_ai.NotesServices')
class NotesServicesClient extends $grpc.Client {
  static final _$getNote = $grpc.ClientMethod<$0.SearchNoteRequest, $0.NoteMessage>(
      '/organiza_ai.NotesServices/getNote',
      ($0.SearchNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoteMessage.fromBuffer(value));
  static final _$getAllNotes = $grpc.ClientMethod<$0.empty, $0.NoteResponse>(
      '/organiza_ai.NotesServices/getAllNotes',
      ($0.empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoteResponse.fromBuffer(value));
  static final _$addNote = $grpc.ClientMethod<$0.AddNoteMessage, $0.empty>(
      '/organiza_ai.NotesServices/addNote',
      ($0.AddNoteMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.empty.fromBuffer(value));
  static final _$removeNote = $grpc.ClientMethod<$0.SearchNoteRequest, $0.empty>(
      '/organiza_ai.NotesServices/removeNote',
      ($0.SearchNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.empty.fromBuffer(value));
  static final _$editNote = $grpc.ClientMethod<$0.NoteMessage, $0.NoteMessage>(
      '/organiza_ai.NotesServices/editNote',
      ($0.NoteMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NoteMessage.fromBuffer(value));

  NotesServicesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.NoteMessage> getNote($0.SearchNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoteResponse> getAllNotes($0.empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllNotes, request, options: options);
  }

  $grpc.ResponseFuture<$0.empty> addNote($0.AddNoteMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.empty> removeNote($0.SearchNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoteMessage> editNote($0.NoteMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editNote, request, options: options);
  }
}

@$pb.GrpcServiceName('organiza_ai.NotesServices')
abstract class NotesServicesServiceBase extends $grpc.Service {
  $core.String get $name => 'organiza_ai.NotesServices';

  NotesServicesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SearchNoteRequest, $0.NoteMessage>(
        'getNote',
        getNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchNoteRequest.fromBuffer(value),
        ($0.NoteMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.empty, $0.NoteResponse>(
        'getAllNotes',
        getAllNotes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.empty.fromBuffer(value),
        ($0.NoteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddNoteMessage, $0.empty>(
        'addNote',
        addNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddNoteMessage.fromBuffer(value),
        ($0.empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchNoteRequest, $0.empty>(
        'removeNote',
        removeNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchNoteRequest.fromBuffer(value),
        ($0.empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NoteMessage, $0.NoteMessage>(
        'editNote',
        editNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NoteMessage.fromBuffer(value),
        ($0.NoteMessage value) => value.writeToBuffer()));
  }

  $async.Future<$0.NoteMessage> getNote_Pre($grpc.ServiceCall call, $async.Future<$0.SearchNoteRequest> request) async {
    return getNote(call, await request);
  }

  $async.Future<$0.NoteResponse> getAllNotes_Pre($grpc.ServiceCall call, $async.Future<$0.empty> request) async {
    return getAllNotes(call, await request);
  }

  $async.Future<$0.empty> addNote_Pre($grpc.ServiceCall call, $async.Future<$0.AddNoteMessage> request) async {
    return addNote(call, await request);
  }

  $async.Future<$0.empty> removeNote_Pre($grpc.ServiceCall call, $async.Future<$0.SearchNoteRequest> request) async {
    return removeNote(call, await request);
  }

  $async.Future<$0.NoteMessage> editNote_Pre($grpc.ServiceCall call, $async.Future<$0.NoteMessage> request) async {
    return editNote(call, await request);
  }

  $async.Future<$0.NoteMessage> getNote($grpc.ServiceCall call, $0.SearchNoteRequest request);
  $async.Future<$0.NoteResponse> getAllNotes($grpc.ServiceCall call, $0.empty request);
  $async.Future<$0.empty> addNote($grpc.ServiceCall call, $0.AddNoteMessage request);
  $async.Future<$0.empty> removeNote($grpc.ServiceCall call, $0.SearchNoteRequest request);
  $async.Future<$0.NoteMessage> editNote($grpc.ServiceCall call, $0.NoteMessage request);
}
