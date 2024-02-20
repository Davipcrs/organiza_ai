//
//  Generated code. Do not modify.
//  source: appointment_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class emptyAppointment extends $pb.GeneratedMessage {
  factory emptyAppointment() => create();
  emptyAppointment._() : super();
  factory emptyAppointment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory emptyAppointment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'emptyAppointment', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  emptyAppointment clone() => emptyAppointment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  emptyAppointment copyWith(void Function(emptyAppointment) updates) => super.copyWith((message) => updates(message as emptyAppointment)) as emptyAppointment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static emptyAppointment create() => emptyAppointment._();
  emptyAppointment createEmptyInstance() => create();
  static $pb.PbList<emptyAppointment> createRepeated() => $pb.PbList<emptyAppointment>();
  @$core.pragma('dart2js:noInline')
  static emptyAppointment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<emptyAppointment>(create);
  static emptyAppointment? _defaultInstance;
}

class AppointmentMessage extends $pb.GeneratedMessage {
  factory AppointmentMessage({
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? desc,
    $core.String? start,
    $core.String? end,
    $core.bool? canceled,
    $fixnum.Int64? color,
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
    if (start != null) {
      $result.start = start;
    }
    if (end != null) {
      $result.end = end;
    }
    if (canceled != null) {
      $result.canceled = canceled;
    }
    if (color != null) {
      $result.color = color;
    }
    return $result;
  }
  AppointmentMessage._() : super();
  factory AppointmentMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppointmentMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppointmentMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'desc')
    ..aOS(4, _omitFieldNames ? '' : 'start')
    ..aOS(5, _omitFieldNames ? '' : 'end')
    ..aOB(6, _omitFieldNames ? '' : 'canceled')
    ..aInt64(7, _omitFieldNames ? '' : 'color')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppointmentMessage clone() => AppointmentMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppointmentMessage copyWith(void Function(AppointmentMessage) updates) => super.copyWith((message) => updates(message as AppointmentMessage)) as AppointmentMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppointmentMessage create() => AppointmentMessage._();
  AppointmentMessage createEmptyInstance() => create();
  static $pb.PbList<AppointmentMessage> createRepeated() => $pb.PbList<AppointmentMessage>();
  @$core.pragma('dart2js:noInline')
  static AppointmentMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppointmentMessage>(create);
  static AppointmentMessage? _defaultInstance;

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
  $core.String get start => $_getSZ(3);
  @$pb.TagNumber(4)
  set start($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStart() => $_has(3);
  @$pb.TagNumber(4)
  void clearStart() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get end => $_getSZ(4);
  @$pb.TagNumber(5)
  set end($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnd() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get canceled => $_getBF(5);
  @$pb.TagNumber(6)
  set canceled($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCanceled() => $_has(5);
  @$pb.TagNumber(6)
  void clearCanceled() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get color => $_getI64(6);
  @$pb.TagNumber(7)
  set color($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasColor() => $_has(6);
  @$pb.TagNumber(7)
  void clearColor() => clearField(7);
}

class AppointmentResponse extends $pb.GeneratedMessage {
  factory AppointmentResponse({
    $core.Iterable<AppointmentMessage>? appointment,
  }) {
    final $result = create();
    if (appointment != null) {
      $result.appointment.addAll(appointment);
    }
    return $result;
  }
  AppointmentResponse._() : super();
  factory AppointmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppointmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppointmentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..pc<AppointmentMessage>(1, _omitFieldNames ? '' : 'appointment', $pb.PbFieldType.PM, subBuilder: AppointmentMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppointmentResponse clone() => AppointmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppointmentResponse copyWith(void Function(AppointmentResponse) updates) => super.copyWith((message) => updates(message as AppointmentResponse)) as AppointmentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppointmentResponse create() => AppointmentResponse._();
  AppointmentResponse createEmptyInstance() => create();
  static $pb.PbList<AppointmentResponse> createRepeated() => $pb.PbList<AppointmentResponse>();
  @$core.pragma('dart2js:noInline')
  static AppointmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppointmentResponse>(create);
  static AppointmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AppointmentMessage> get appointment => $_getList(0);
}

class AddAppointmentMessage extends $pb.GeneratedMessage {
  factory AddAppointmentMessage({
    $core.String? title,
    $core.String? desc,
    $core.String? start,
    $core.String? end,
    $core.bool? canceled,
    $fixnum.Int64? color,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    if (start != null) {
      $result.start = start;
    }
    if (end != null) {
      $result.end = end;
    }
    if (canceled != null) {
      $result.canceled = canceled;
    }
    if (color != null) {
      $result.color = color;
    }
    return $result;
  }
  AddAppointmentMessage._() : super();
  factory AddAppointmentMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAppointmentMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddAppointmentMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'desc')
    ..aOS(3, _omitFieldNames ? '' : 'start')
    ..aOS(4, _omitFieldNames ? '' : 'end')
    ..aOB(5, _omitFieldNames ? '' : 'canceled')
    ..aInt64(6, _omitFieldNames ? '' : 'color')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAppointmentMessage clone() => AddAppointmentMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAppointmentMessage copyWith(void Function(AddAppointmentMessage) updates) => super.copyWith((message) => updates(message as AddAppointmentMessage)) as AddAppointmentMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddAppointmentMessage create() => AddAppointmentMessage._();
  AddAppointmentMessage createEmptyInstance() => create();
  static $pb.PbList<AddAppointmentMessage> createRepeated() => $pb.PbList<AddAppointmentMessage>();
  @$core.pragma('dart2js:noInline')
  static AddAppointmentMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAppointmentMessage>(create);
  static AddAppointmentMessage? _defaultInstance;

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
  $core.String get start => $_getSZ(2);
  @$pb.TagNumber(3)
  set start($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearStart() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get end => $_getSZ(3);
  @$pb.TagNumber(4)
  set end($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnd() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get canceled => $_getBF(4);
  @$pb.TagNumber(5)
  set canceled($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCanceled() => $_has(4);
  @$pb.TagNumber(5)
  void clearCanceled() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get color => $_getI64(5);
  @$pb.TagNumber(6)
  set color($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearColor() => clearField(6);
}

class SearchAppointmentRequest extends $pb.GeneratedMessage {
  factory SearchAppointmentRequest({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SearchAppointmentRequest._() : super();
  factory SearchAppointmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchAppointmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchAppointmentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'organiza_ai'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchAppointmentRequest clone() => SearchAppointmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchAppointmentRequest copyWith(void Function(SearchAppointmentRequest) updates) => super.copyWith((message) => updates(message as SearchAppointmentRequest)) as SearchAppointmentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchAppointmentRequest create() => SearchAppointmentRequest._();
  SearchAppointmentRequest createEmptyInstance() => create();
  static $pb.PbList<SearchAppointmentRequest> createRepeated() => $pb.PbList<SearchAppointmentRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchAppointmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchAppointmentRequest>(create);
  static SearchAppointmentRequest? _defaultInstance;

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
