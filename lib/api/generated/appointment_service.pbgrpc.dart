//
//  Generated code. Do not modify.
//  source: appointment_service.proto
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

import 'appointment_service.pb.dart' as $0;

export 'appointment_service.pb.dart';

@$pb.GrpcServiceName('organiza_ai.AppointmentServices')
class AppointmentServicesClient extends $grpc.Client {
  static final _$getAppointment = $grpc.ClientMethod<$0.SearchAppointmentRequest, $0.AppointmentMessage>(
      '/organiza_ai.AppointmentServices/getAppointment',
      ($0.SearchAppointmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppointmentMessage.fromBuffer(value));
  static final _$getAllAppointments = $grpc.ClientMethod<$0.emptyAppointment, $0.AppointmentResponse>(
      '/organiza_ai.AppointmentServices/getAllAppointments',
      ($0.emptyAppointment value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppointmentResponse.fromBuffer(value));
  static final _$addAppointment = $grpc.ClientMethod<$0.AddAppointmentMessage, $0.SearchAppointmentRequest>(
      '/organiza_ai.AppointmentServices/addAppointment',
      ($0.AddAppointmentMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchAppointmentRequest.fromBuffer(value));
  static final _$removeAppointment = $grpc.ClientMethod<$0.SearchAppointmentRequest, $0.emptyAppointment>(
      '/organiza_ai.AppointmentServices/removeAppointment',
      ($0.SearchAppointmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.emptyAppointment.fromBuffer(value));
  static final _$editAppointment = $grpc.ClientMethod<$0.AppointmentMessage, $0.AppointmentMessage>(
      '/organiza_ai.AppointmentServices/editAppointment',
      ($0.AppointmentMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppointmentMessage.fromBuffer(value));

  AppointmentServicesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.AppointmentMessage> getAppointment($0.SearchAppointmentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAppointment, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppointmentResponse> getAllAppointments($0.emptyAppointment request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllAppointments, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchAppointmentRequest> addAppointment($0.AddAppointmentMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAppointment, request, options: options);
  }

  $grpc.ResponseFuture<$0.emptyAppointment> removeAppointment($0.SearchAppointmentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeAppointment, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppointmentMessage> editAppointment($0.AppointmentMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editAppointment, request, options: options);
  }
}

@$pb.GrpcServiceName('organiza_ai.AppointmentServices')
abstract class AppointmentServicesServiceBase extends $grpc.Service {
  $core.String get $name => 'organiza_ai.AppointmentServices';

  AppointmentServicesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SearchAppointmentRequest, $0.AppointmentMessage>(
        'getAppointment',
        getAppointment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchAppointmentRequest.fromBuffer(value),
        ($0.AppointmentMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.emptyAppointment, $0.AppointmentResponse>(
        'getAllAppointments',
        getAllAppointments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.emptyAppointment.fromBuffer(value),
        ($0.AppointmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddAppointmentMessage, $0.SearchAppointmentRequest>(
        'addAppointment',
        addAppointment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddAppointmentMessage.fromBuffer(value),
        ($0.SearchAppointmentRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchAppointmentRequest, $0.emptyAppointment>(
        'removeAppointment',
        removeAppointment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchAppointmentRequest.fromBuffer(value),
        ($0.emptyAppointment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AppointmentMessage, $0.AppointmentMessage>(
        'editAppointment',
        editAppointment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AppointmentMessage.fromBuffer(value),
        ($0.AppointmentMessage value) => value.writeToBuffer()));
  }

  $async.Future<$0.AppointmentMessage> getAppointment_Pre($grpc.ServiceCall call, $async.Future<$0.SearchAppointmentRequest> request) async {
    return getAppointment(call, await request);
  }

  $async.Future<$0.AppointmentResponse> getAllAppointments_Pre($grpc.ServiceCall call, $async.Future<$0.emptyAppointment> request) async {
    return getAllAppointments(call, await request);
  }

  $async.Future<$0.SearchAppointmentRequest> addAppointment_Pre($grpc.ServiceCall call, $async.Future<$0.AddAppointmentMessage> request) async {
    return addAppointment(call, await request);
  }

  $async.Future<$0.emptyAppointment> removeAppointment_Pre($grpc.ServiceCall call, $async.Future<$0.SearchAppointmentRequest> request) async {
    return removeAppointment(call, await request);
  }

  $async.Future<$0.AppointmentMessage> editAppointment_Pre($grpc.ServiceCall call, $async.Future<$0.AppointmentMessage> request) async {
    return editAppointment(call, await request);
  }

  $async.Future<$0.AppointmentMessage> getAppointment($grpc.ServiceCall call, $0.SearchAppointmentRequest request);
  $async.Future<$0.AppointmentResponse> getAllAppointments($grpc.ServiceCall call, $0.emptyAppointment request);
  $async.Future<$0.SearchAppointmentRequest> addAppointment($grpc.ServiceCall call, $0.AddAppointmentMessage request);
  $async.Future<$0.emptyAppointment> removeAppointment($grpc.ServiceCall call, $0.SearchAppointmentRequest request);
  $async.Future<$0.AppointmentMessage> editAppointment($grpc.ServiceCall call, $0.AppointmentMessage request);
}
