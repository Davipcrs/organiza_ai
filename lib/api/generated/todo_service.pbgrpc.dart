//
//  Generated code. Do not modify.
//  source: todo_service.proto
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

import 'todo_service.pb.dart' as $0;

export 'todo_service.pb.dart';

@$pb.GrpcServiceName('organiza_ai.TodoServices')
class TodoServicesClient extends $grpc.Client {
  static final _$getTodo = $grpc.ClientMethod<$0.SearchTodoMessage, $0.TodoMessage>(
      '/organiza_ai.TodoServices/getTodo',
      ($0.SearchTodoMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoMessage.fromBuffer(value));
  static final _$getAllTodo = $grpc.ClientMethod<$0.emptyTodo, $0.TodoResponse>(
      '/organiza_ai.TodoServices/getAllTodo',
      ($0.emptyTodo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoResponse.fromBuffer(value));
  static final _$addTodo = $grpc.ClientMethod<$0.AddTodoMessage, $0.SearchTodoMessage>(
      '/organiza_ai.TodoServices/addTodo',
      ($0.AddTodoMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchTodoMessage.fromBuffer(value));
  static final _$editTodo = $grpc.ClientMethod<$0.TodoMessage, $0.TodoMessage>(
      '/organiza_ai.TodoServices/editTodo',
      ($0.TodoMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoMessage.fromBuffer(value));
  static final _$deleteTodo = $grpc.ClientMethod<$0.SearchTodoMessage, $0.emptyTodo>(
      '/organiza_ai.TodoServices/deleteTodo',
      ($0.SearchTodoMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.emptyTodo.fromBuffer(value));

  TodoServicesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.TodoMessage> getTodo($0.SearchTodoMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoResponse> getAllTodo($0.emptyTodo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchTodoMessage> addTodo($0.AddTodoMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoMessage> editTodo($0.TodoMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.emptyTodo> deleteTodo($0.SearchTodoMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }
}

@$pb.GrpcServiceName('organiza_ai.TodoServices')
abstract class TodoServicesServiceBase extends $grpc.Service {
  $core.String get $name => 'organiza_ai.TodoServices';

  TodoServicesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SearchTodoMessage, $0.TodoMessage>(
        'getTodo',
        getTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchTodoMessage.fromBuffer(value),
        ($0.TodoMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.emptyTodo, $0.TodoResponse>(
        'getAllTodo',
        getAllTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.emptyTodo.fromBuffer(value),
        ($0.TodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddTodoMessage, $0.SearchTodoMessage>(
        'addTodo',
        addTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddTodoMessage.fromBuffer(value),
        ($0.SearchTodoMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoMessage, $0.TodoMessage>(
        'editTodo',
        editTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoMessage.fromBuffer(value),
        ($0.TodoMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchTodoMessage, $0.emptyTodo>(
        'deleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchTodoMessage.fromBuffer(value),
        ($0.emptyTodo value) => value.writeToBuffer()));
  }

  $async.Future<$0.TodoMessage> getTodo_Pre($grpc.ServiceCall call, $async.Future<$0.SearchTodoMessage> request) async {
    return getTodo(call, await request);
  }

  $async.Future<$0.TodoResponse> getAllTodo_Pre($grpc.ServiceCall call, $async.Future<$0.emptyTodo> request) async {
    return getAllTodo(call, await request);
  }

  $async.Future<$0.SearchTodoMessage> addTodo_Pre($grpc.ServiceCall call, $async.Future<$0.AddTodoMessage> request) async {
    return addTodo(call, await request);
  }

  $async.Future<$0.TodoMessage> editTodo_Pre($grpc.ServiceCall call, $async.Future<$0.TodoMessage> request) async {
    return editTodo(call, await request);
  }

  $async.Future<$0.emptyTodo> deleteTodo_Pre($grpc.ServiceCall call, $async.Future<$0.SearchTodoMessage> request) async {
    return deleteTodo(call, await request);
  }

  $async.Future<$0.TodoMessage> getTodo($grpc.ServiceCall call, $0.SearchTodoMessage request);
  $async.Future<$0.TodoResponse> getAllTodo($grpc.ServiceCall call, $0.emptyTodo request);
  $async.Future<$0.SearchTodoMessage> addTodo($grpc.ServiceCall call, $0.AddTodoMessage request);
  $async.Future<$0.TodoMessage> editTodo($grpc.ServiceCall call, $0.TodoMessage request);
  $async.Future<$0.emptyTodo> deleteTodo($grpc.ServiceCall call, $0.SearchTodoMessage request);
}
