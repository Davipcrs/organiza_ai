//
//  Generated code. Do not modify.
//  source: todo_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class emptyTodo extends $pb.GeneratedMessage {
  factory emptyTodo() => create();
  emptyTodo._() : super();
  factory emptyTodo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory emptyTodo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'emptyTodo', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  emptyTodo clone() => emptyTodo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  emptyTodo copyWith(void Function(emptyTodo) updates) => super.copyWith((message) => updates(message as emptyTodo)) as emptyTodo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static emptyTodo create() => emptyTodo._();
  emptyTodo createEmptyInstance() => create();
  static $pb.PbList<emptyTodo> createRepeated() => $pb.PbList<emptyTodo>();
  @$core.pragma('dart2js:noInline')
  static emptyTodo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<emptyTodo>(create);
  static emptyTodo? _defaultInstance;
}

class TodoMessage extends $pb.GeneratedMessage {
  factory TodoMessage({
    $fixnum.Int64? id,
    $core.String? title,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  TodoMessage._() : super();
  factory TodoMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TodoMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoMessage clone() => TodoMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoMessage copyWith(void Function(TodoMessage) updates) => super.copyWith((message) => updates(message as TodoMessage)) as TodoMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TodoMessage create() => TodoMessage._();
  TodoMessage createEmptyInstance() => create();
  static $pb.PbList<TodoMessage> createRepeated() => $pb.PbList<TodoMessage>();
  @$core.pragma('dart2js:noInline')
  static TodoMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoMessage>(create);
  static TodoMessage? _defaultInstance;

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
}

class TodoResponse extends $pb.GeneratedMessage {
  factory TodoResponse({
    $core.Iterable<TodoMessage>? todo,
  }) {
    final $result = create();
    if (todo != null) {
      $result.todo.addAll(todo);
    }
    return $result;
  }
  TodoResponse._() : super();
  factory TodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TodoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..pc<TodoMessage>(1, _omitFieldNames ? '' : 'todo', $pb.PbFieldType.PM, subBuilder: TodoMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoResponse clone() => TodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoResponse copyWith(void Function(TodoResponse) updates) => super.copyWith((message) => updates(message as TodoResponse)) as TodoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TodoResponse create() => TodoResponse._();
  TodoResponse createEmptyInstance() => create();
  static $pb.PbList<TodoResponse> createRepeated() => $pb.PbList<TodoResponse>();
  @$core.pragma('dart2js:noInline')
  static TodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoResponse>(create);
  static TodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TodoMessage> get todo => $_getList(0);
}

class AddTodoMessage extends $pb.GeneratedMessage {
  factory AddTodoMessage({
    $core.String? title,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  AddTodoMessage._() : super();
  factory AddTodoMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTodoMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddTodoMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTodoMessage clone() => AddTodoMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTodoMessage copyWith(void Function(AddTodoMessage) updates) => super.copyWith((message) => updates(message as AddTodoMessage)) as AddTodoMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddTodoMessage create() => AddTodoMessage._();
  AddTodoMessage createEmptyInstance() => create();
  static $pb.PbList<AddTodoMessage> createRepeated() => $pb.PbList<AddTodoMessage>();
  @$core.pragma('dart2js:noInline')
  static AddTodoMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTodoMessage>(create);
  static AddTodoMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);
}

class SearchTodoMessage extends $pb.GeneratedMessage {
  factory SearchTodoMessage({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SearchTodoMessage._() : super();
  factory SearchTodoMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchTodoMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchTodoMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchTodoMessage clone() => SearchTodoMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchTodoMessage copyWith(void Function(SearchTodoMessage) updates) => super.copyWith((message) => updates(message as SearchTodoMessage)) as SearchTodoMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchTodoMessage create() => SearchTodoMessage._();
  SearchTodoMessage createEmptyInstance() => create();
  static $pb.PbList<SearchTodoMessage> createRepeated() => $pb.PbList<SearchTodoMessage>();
  @$core.pragma('dart2js:noInline')
  static SearchTodoMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchTodoMessage>(create);
  static SearchTodoMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
