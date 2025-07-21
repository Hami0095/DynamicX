// This is a generated file - do not edit.
//
// Generated from proto/form.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'form.pb.dart' as $0;

export 'form.pb.dart';

@$pb.GrpcServiceName('form.v1.FormService')
class FormServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  FormServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.FormDefinition> getFormSchema(
    $0.FormRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getFormSchema, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateFormResponse> createForm(
    $0.CreateFormRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createForm, request, options: options);
  }

  $grpc.ResponseFuture<$0.SubmitFormResponse> submitForm(
    $0.SubmitFormRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$submitForm, request, options: options);
  }

  // method descriptors

  static final _$getFormSchema =
      $grpc.ClientMethod<$0.FormRequest, $0.FormDefinition>(
          '/form.v1.FormService/GetFormSchema',
          ($0.FormRequest value) => value.writeToBuffer(),
          $0.FormDefinition.fromBuffer);
  static final _$createForm =
      $grpc.ClientMethod<$0.CreateFormRequest, $0.CreateFormResponse>(
          '/form.v1.FormService/CreateForm',
          ($0.CreateFormRequest value) => value.writeToBuffer(),
          $0.CreateFormResponse.fromBuffer);
  static final _$submitForm =
      $grpc.ClientMethod<$0.SubmitFormRequest, $0.SubmitFormResponse>(
          '/form.v1.FormService/SubmitForm',
          ($0.SubmitFormRequest value) => value.writeToBuffer(),
          $0.SubmitFormResponse.fromBuffer);
}

@$pb.GrpcServiceName('form.v1.FormService')
abstract class FormServiceBase extends $grpc.Service {
  $core.String get $name => 'form.v1.FormService';

  FormServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FormRequest, $0.FormDefinition>(
        'GetFormSchema',
        getFormSchema_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FormRequest.fromBuffer(value),
        ($0.FormDefinition value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateFormRequest, $0.CreateFormResponse>(
        'CreateForm',
        createForm_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateFormRequest.fromBuffer(value),
        ($0.CreateFormResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubmitFormRequest, $0.SubmitFormResponse>(
        'SubmitForm',
        submitForm_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SubmitFormRequest.fromBuffer(value),
        ($0.SubmitFormResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.FormDefinition> getFormSchema_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.FormRequest> $request) async {
    return getFormSchema($call, await $request);
  }

  $async.Future<$0.FormDefinition> getFormSchema(
      $grpc.ServiceCall call, $0.FormRequest request);

  $async.Future<$0.CreateFormResponse> createForm_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateFormRequest> $request) async {
    return createForm($call, await $request);
  }

  $async.Future<$0.CreateFormResponse> createForm(
      $grpc.ServiceCall call, $0.CreateFormRequest request);

  $async.Future<$0.SubmitFormResponse> submitForm_Pre($grpc.ServiceCall $call,
      $async.Future<$0.SubmitFormRequest> $request) async {
    return submitForm($call, await $request);
  }

  $async.Future<$0.SubmitFormResponse> submitForm(
      $grpc.ServiceCall call, $0.SubmitFormRequest request);
}
