//
//  Generated code. Do not modify.
//  source: lib/api/notes_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'notes_service.pb.dart' as $0;
import 'notes_service.pbjson.dart';

export 'notes_service.pb.dart';

abstract class NotesServicesServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Note> getNote($pb.ServerContext ctx, $0.SearchNoteRequest request);
  $async.Future<$0.NoteResponse> getAllNotes($pb.ServerContext ctx, $0.empty request);
  $async.Future<$0.empty> addNote($pb.ServerContext ctx, $0.AddNote request);
  $async.Future<$0.Note> removeNote($pb.ServerContext ctx, $0.SearchNoteRequest request);
  $async.Future<$0.Note> editNote($pb.ServerContext ctx, $0.Note request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'getNote': return $0.SearchNoteRequest();
      case 'getAllNotes': return $0.empty();
      case 'addNote': return $0.AddNote();
      case 'removeNote': return $0.SearchNoteRequest();
      case 'editNote': return $0.Note();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'getNote': return this.getNote(ctx, request as $0.SearchNoteRequest);
      case 'getAllNotes': return this.getAllNotes(ctx, request as $0.empty);
      case 'addNote': return this.addNote(ctx, request as $0.AddNote);
      case 'removeNote': return this.removeNote(ctx, request as $0.SearchNoteRequest);
      case 'editNote': return this.editNote(ctx, request as $0.Note);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => NotesServicesServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => NotesServicesServiceBase$messageJson;
}

