//
//  Generated code. Do not modify.
//  source: lib/api/notes_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class empty extends $pb.GeneratedMessage {
  factory empty() => create();
  empty._() : super();
  factory empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  empty clone() => empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  empty copyWith(void Function(empty) updates) => super.copyWith((message) => updates(message as empty)) as empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static empty create() => empty._();
  empty createEmptyInstance() => create();
  static $pb.PbList<empty> createRepeated() => $pb.PbList<empty>();
  @$core.pragma('dart2js:noInline')
  static empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<empty>(create);
  static empty? _defaultInstance;
}

class Note extends $pb.GeneratedMessage {
  factory Note({
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? desc,
    $core.String? created,
    $core.String? deadline,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (created != null) {
      $result.created = created;
    }
    if (deadline != null) {
      $result.deadline = deadline;
    }
    return $result;
  }
  Note._() : super();
  factory Note.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Note.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Note', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..aOS(4, _omitFieldNames ? '' : 'created')
    ..aOS(5, _omitFieldNames ? '' : 'deadline')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Note clone() => Note()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Note copyWith(void Function(Note) updates) => super.copyWith((message) => updates(message as Note)) as Note;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Note create() => Note._();
  Note createEmptyInstance() => create();
  static $pb.PbList<Note> createRepeated() => $pb.PbList<Note>();
  @$core.pragma('dart2js:noInline')
  static Note getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Note>(create);
  static Note? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get created => $_getSZ(3);
  @$pb.TagNumber(4)
  set created($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreated() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreated() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get deadline => $_getSZ(4);
  @$pb.TagNumber(5)
  set deadline($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeadline() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeadline() => clearField(5);
}

class AddNote extends $pb.GeneratedMessage {
  factory AddNote({
    $core.String? title,
    $core.String? desc,
    $core.String? created,
    $core.String? deadline,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (created != null) {
      $result.created = created;
    }
    if (deadline != null) {
      $result.deadline = deadline;
    }
    return $result;
  }
  AddNote._() : super();
  factory AddNote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddNote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddNote', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..aOS(3, _omitFieldNames ? '' : 'created')
    ..aOS(4, _omitFieldNames ? '' : 'deadline')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddNote clone() => AddNote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddNote copyWith(void Function(AddNote) updates) => super.copyWith((message) => updates(message as AddNote)) as AddNote;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddNote create() => AddNote._();
  AddNote createEmptyInstance() => create();
  static $pb.PbList<AddNote> createRepeated() => $pb.PbList<AddNote>();
  @$core.pragma('dart2js:noInline')
  static AddNote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddNote>(create);
  static AddNote? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get created => $_getSZ(2);
  @$pb.TagNumber(3)
  set created($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreated() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreated() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get deadline => $_getSZ(3);
  @$pb.TagNumber(4)
  set deadline($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeadline() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeadline() => clearField(4);
}

class NoteResponse extends $pb.GeneratedMessage {
  factory NoteResponse({
    $core.Iterable<Note>? note,
  }) {
    final $result = create();
    if (note != null) {
      $result.note.addAll(note);
    }
    return $result;
  }
  NoteResponse._() : super();
  factory NoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NoteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..pc<Note>(1, _omitFieldNames ? '' : 'note', $pb.PbFieldType.PM, subBuilder: Note.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoteResponse clone() => NoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoteResponse copyWith(void Function(NoteResponse) updates) => super.copyWith((message) => updates(message as NoteResponse)) as NoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoteResponse create() => NoteResponse._();
  NoteResponse createEmptyInstance() => create();
  static $pb.PbList<NoteResponse> createRepeated() => $pb.PbList<NoteResponse>();
  @$core.pragma('dart2js:noInline')
  static NoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoteResponse>(create);
  static NoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Note> get note => $_getList(0);
}

class SearchNoteRequest extends $pb.GeneratedMessage {
  factory SearchNoteRequest({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SearchNoteRequest._() : super();
  factory SearchNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchNoteRequest clone() => SearchNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchNoteRequest copyWith(void Function(SearchNoteRequest) updates) => super.copyWith((message) => updates(message as SearchNoteRequest)) as SearchNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchNoteRequest create() => SearchNoteRequest._();
  SearchNoteRequest createEmptyInstance() => create();
  static $pb.PbList<SearchNoteRequest> createRepeated() => $pb.PbList<SearchNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchNoteRequest>(create);
  static SearchNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class NotesServicesApi {
  $pb.RpcClient _client;
  NotesServicesApi(this._client);

  $async.Future<Note> getNote($pb.ClientContext? ctx, SearchNoteRequest request) =>
    _client.invoke<Note>(ctx, 'NotesServices', 'getNote', request, Note())
  ;
  $async.Future<NoteResponse> getAllNotes($pb.ClientContext? ctx, empty request) =>
    _client.invoke<NoteResponse>(ctx, 'NotesServices', 'getAllNotes', request, NoteResponse())
  ;
  $async.Future<empty> addNote($pb.ClientContext? ctx, AddNote request) =>
    _client.invoke<empty>(ctx, 'NotesServices', 'addNote', request, empty())
  ;
  $async.Future<Note> removeNote($pb.ClientContext? ctx, SearchNoteRequest request) =>
    _client.invoke<Note>(ctx, 'NotesServices', 'removeNote', request, Note())
  ;
  $async.Future<Note> editNote($pb.ClientContext? ctx, Note request) =>
    _client.invoke<Note>(ctx, 'NotesServices', 'editNote', request, Note())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
