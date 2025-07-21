// This is a generated file - do not edit.
//
// Generated from proto/form.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use questionTypeDescriptor instead')
const QuestionType$json = {
  '1': 'QuestionType',
  '2': [
    {'1': 'TEXT', '2': 0},
    {'1': 'RADIO', '2': 1},
    {'1': 'DATE', '2': 2},
  ],
};

/// Descriptor for `QuestionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List questionTypeDescriptor = $convert.base64Decode(
    'CgxRdWVzdGlvblR5cGUSCAoEVEVYVBAAEgkKBVJBRElPEAESCAoEREFURRAC');

@$core.Deprecated('Use formRequestDescriptor instead')
const FormRequest$json = {
  '1': 'FormRequest',
  '2': [
    {'1': 'form_id', '3': 1, '4': 1, '5': 9, '10': 'formId'},
  ],
};

/// Descriptor for `FormRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List formRequestDescriptor = $convert
    .base64Decode('CgtGb3JtUmVxdWVzdBIXCgdmb3JtX2lkGAEgASgJUgZmb3JtSWQ=');

@$core.Deprecated('Use formDefinitionDescriptor instead')
const FormDefinition$json = {
  '1': 'FormDefinition',
  '2': [
    {'1': 'form_id', '3': 1, '4': 1, '5': 9, '10': 'formId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {
      '1': 'steps',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.form.v1.FormStep',
      '10': 'steps'
    },
  ],
};

/// Descriptor for `FormDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List formDefinitionDescriptor = $convert.base64Decode(
    'Cg5Gb3JtRGVmaW5pdGlvbhIXCgdmb3JtX2lkGAEgASgJUgZmb3JtSWQSFAoFdGl0bGUYAiABKA'
    'lSBXRpdGxlEicKBXN0ZXBzGAMgAygLMhEuZm9ybS52MS5Gb3JtU3RlcFIFc3RlcHM=');

@$core.Deprecated('Use formStepDescriptor instead')
const FormStep$json = {
  '1': 'FormStep',
  '2': [
    {'1': 'step_id', '3': 1, '4': 1, '5': 9, '10': 'stepId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {
      '1': 'questions',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.form.v1.Question',
      '10': 'questions'
    },
  ],
};

/// Descriptor for `FormStep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List formStepDescriptor = $convert.base64Decode(
    'CghGb3JtU3RlcBIXCgdzdGVwX2lkGAEgASgJUgZzdGVwSWQSFAoFdGl0bGUYAiABKAlSBXRpdG'
    'xlEi8KCXF1ZXN0aW9ucxgDIAMoCzIRLmZvcm0udjEuUXVlc3Rpb25SCXF1ZXN0aW9ucw==');

@$core.Deprecated('Use questionDescriptor instead')
const Question$json = {
  '1': 'Question',
  '2': [
    {'1': 'question_id', '3': 1, '4': 1, '5': 9, '10': 'questionId'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.form.v1.QuestionType',
      '10': 'type'
    },
    {'1': 'options', '3': 4, '4': 3, '5': 9, '10': 'options'},
    {'1': 'is_required', '3': 5, '4': 1, '5': 8, '10': 'isRequired'},
  ],
};

/// Descriptor for `Question`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionDescriptor = $convert.base64Decode(
    'CghRdWVzdGlvbhIfCgtxdWVzdGlvbl9pZBgBIAEoCVIKcXVlc3Rpb25JZBIUCgVsYWJlbBgCIA'
    'EoCVIFbGFiZWwSKQoEdHlwZRgDIAEoDjIVLmZvcm0udjEuUXVlc3Rpb25UeXBlUgR0eXBlEhgK'
    'B29wdGlvbnMYBCADKAlSB29wdGlvbnMSHwoLaXNfcmVxdWlyZWQYBSABKAhSCmlzUmVxdWlyZW'
    'Q=');

@$core.Deprecated('Use validationRuleDescriptor instead')
const ValidationRule$json = {
  '1': 'ValidationRule',
  '2': [
    {'1': 'rule_type', '3': 1, '4': 1, '5': 9, '10': 'ruleType'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `ValidationRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validationRuleDescriptor = $convert.base64Decode(
    'Cg5WYWxpZGF0aW9uUnVsZRIbCglydWxlX3R5cGUYASABKAlSCHJ1bGVUeXBlEhQKBXZhbHVlGA'
    'IgASgJUgV2YWx1ZQ==');

@$core.Deprecated('Use submitFormRequestDescriptor instead')
const SubmitFormRequest$json = {
  '1': 'SubmitFormRequest',
  '2': [
    {'1': 'form_id', '3': 1, '4': 1, '5': 9, '10': 'formId'},
    {
      '1': 'answers',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.form.v1.SubmitFormRequest.AnswersEntry',
      '10': 'answers'
    },
  ],
  '3': [SubmitFormRequest_AnswersEntry$json],
};

@$core.Deprecated('Use submitFormRequestDescriptor instead')
const SubmitFormRequest_AnswersEntry$json = {
  '1': 'AnswersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SubmitFormRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitFormRequestDescriptor = $convert.base64Decode(
    'ChFTdWJtaXRGb3JtUmVxdWVzdBIXCgdmb3JtX2lkGAEgASgJUgZmb3JtSWQSQQoHYW5zd2Vycx'
    'gCIAMoCzInLmZvcm0udjEuU3VibWl0Rm9ybVJlcXVlc3QuQW5zd2Vyc0VudHJ5UgdhbnN3ZXJz'
    'GjoKDEFuc3dlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdW'
    'U6AjgB');

@$core.Deprecated('Use submitFormResponseDescriptor instead')
const SubmitFormResponse$json = {
  '1': 'SubmitFormResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SubmitFormResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitFormResponseDescriptor = $convert.base64Decode(
    'ChJTdWJtaXRGb3JtUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYW'
    'dlGAIgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use createFormRequestDescriptor instead')
const CreateFormRequest$json = {
  '1': 'CreateFormRequest',
  '2': [
    {
      '1': 'form',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.form.v1.FormDefinition',
      '10': 'form'
    },
  ],
};

/// Descriptor for `CreateFormRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFormRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVGb3JtUmVxdWVzdBIrCgRmb3JtGAEgASgLMhcuZm9ybS52MS5Gb3JtRGVmaW5pdG'
    'lvblIEZm9ybQ==');

@$core.Deprecated('Use createFormResponseDescriptor instead')
const CreateFormResponse$json = {
  '1': 'CreateFormResponse',
  '2': [
    {'1': 'form_id', '3': 1, '4': 1, '5': 9, '10': 'formId'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CreateFormResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFormResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVGb3JtUmVzcG9uc2USFwoHZm9ybV9pZBgBIAEoCVIGZm9ybUlkEhgKB21lc3NhZ2'
    'UYAiABKAlSB21lc3NhZ2U=');
