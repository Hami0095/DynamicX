// This is a generated file - do not edit.
//
// Generated from proto/form.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'form.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'form.pbenum.dart';

class FormRequest extends $pb.GeneratedMessage {
  factory FormRequest({
    $core.String? formId,
  }) {
    final result = create();
    if (formId != null) result.formId = formId;
    return result;
  }

  FormRequest._();

  factory FormRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FormRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FormRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'formId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FormRequest clone() => FormRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FormRequest copyWith(void Function(FormRequest) updates) =>
      super.copyWith((message) => updates(message as FormRequest))
          as FormRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FormRequest create() => FormRequest._();
  @$core.override
  FormRequest createEmptyInstance() => create();
  static $pb.PbList<FormRequest> createRepeated() => $pb.PbList<FormRequest>();
  @$core.pragma('dart2js:noInline')
  static FormRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FormRequest>(create);
  static FormRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get formId => $_getSZ(0);
  @$pb.TagNumber(1)
  set formId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFormId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFormId() => $_clearField(1);
}

class FormDefinition extends $pb.GeneratedMessage {
  factory FormDefinition({
    $core.String? formId,
    $core.String? title,
    $core.Iterable<FormStep>? steps,
  }) {
    final result = create();
    if (formId != null) result.formId = formId;
    if (title != null) result.title = title;
    if (steps != null) result.steps.addAll(steps);
    return result;
  }

  FormDefinition._();

  factory FormDefinition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FormDefinition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FormDefinition',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'formId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..pc<FormStep>(3, _omitFieldNames ? '' : 'steps', $pb.PbFieldType.PM,
        subBuilder: FormStep.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FormDefinition clone() => FormDefinition()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FormDefinition copyWith(void Function(FormDefinition) updates) =>
      super.copyWith((message) => updates(message as FormDefinition))
          as FormDefinition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FormDefinition create() => FormDefinition._();
  @$core.override
  FormDefinition createEmptyInstance() => create();
  static $pb.PbList<FormDefinition> createRepeated() =>
      $pb.PbList<FormDefinition>();
  @$core.pragma('dart2js:noInline')
  static FormDefinition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FormDefinition>(create);
  static FormDefinition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get formId => $_getSZ(0);
  @$pb.TagNumber(1)
  set formId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFormId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFormId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<FormStep> get steps => $_getList(2);
}

class FormStep extends $pb.GeneratedMessage {
  factory FormStep({
    $core.String? stepId,
    $core.String? title,
    $core.Iterable<Question>? questions,
  }) {
    final result = create();
    if (stepId != null) result.stepId = stepId;
    if (title != null) result.title = title;
    if (questions != null) result.questions.addAll(questions);
    return result;
  }

  FormStep._();

  factory FormStep.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FormStep.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FormStep',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stepId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..pc<Question>(3, _omitFieldNames ? '' : 'questions', $pb.PbFieldType.PM,
        subBuilder: Question.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FormStep clone() => FormStep()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FormStep copyWith(void Function(FormStep) updates) =>
      super.copyWith((message) => updates(message as FormStep)) as FormStep;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FormStep create() => FormStep._();
  @$core.override
  FormStep createEmptyInstance() => create();
  static $pb.PbList<FormStep> createRepeated() => $pb.PbList<FormStep>();
  @$core.pragma('dart2js:noInline')
  static FormStep getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FormStep>(create);
  static FormStep? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stepId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stepId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStepId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStepId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<Question> get questions => $_getList(2);
}

class Question extends $pb.GeneratedMessage {
  factory Question({
    $core.String? questionId,
    $core.String? label,
    QuestionType? type,
    $core.Iterable<$core.String>? options,
    $core.bool? isRequired,
  }) {
    final result = create();
    if (questionId != null) result.questionId = questionId;
    if (label != null) result.label = label;
    if (type != null) result.type = type;
    if (options != null) result.options.addAll(options);
    if (isRequired != null) result.isRequired = isRequired;
    return result;
  }

  Question._();

  factory Question.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Question.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Question',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'questionId')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..e<QuestionType>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: QuestionType.TEXT,
        valueOf: QuestionType.valueOf,
        enumValues: QuestionType.values)
    ..pPS(4, _omitFieldNames ? '' : 'options')
    ..aOB(5, _omitFieldNames ? '' : 'isRequired')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Question clone() => Question()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Question copyWith(void Function(Question) updates) =>
      super.copyWith((message) => updates(message as Question)) as Question;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Question create() => Question._();
  @$core.override
  Question createEmptyInstance() => create();
  static $pb.PbList<Question> createRepeated() => $pb.PbList<Question>();
  @$core.pragma('dart2js:noInline')
  static Question getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Question>(create);
  static Question? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get questionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set questionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => $_clearField(2);

  @$pb.TagNumber(3)
  QuestionType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(QuestionType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get options => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get isRequired => $_getBF(4);
  @$pb.TagNumber(5)
  set isRequired($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsRequired() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsRequired() => $_clearField(5);
}

class ValidationRule extends $pb.GeneratedMessage {
  factory ValidationRule({
    $core.String? ruleType,
    $core.String? value,
  }) {
    final result = create();
    if (ruleType != null) result.ruleType = ruleType;
    if (value != null) result.value = value;
    return result;
  }

  ValidationRule._();

  factory ValidationRule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ValidationRule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ValidationRule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ruleType')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidationRule clone() => ValidationRule()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidationRule copyWith(void Function(ValidationRule) updates) =>
      super.copyWith((message) => updates(message as ValidationRule))
          as ValidationRule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidationRule create() => ValidationRule._();
  @$core.override
  ValidationRule createEmptyInstance() => create();
  static $pb.PbList<ValidationRule> createRepeated() =>
      $pb.PbList<ValidationRule>();
  @$core.pragma('dart2js:noInline')
  static ValidationRule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ValidationRule>(create);
  static ValidationRule? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ruleType => $_getSZ(0);
  @$pb.TagNumber(1)
  set ruleType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRuleType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRuleType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class SubmitFormRequest extends $pb.GeneratedMessage {
  factory SubmitFormRequest({
    $core.String? formId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? answers,
  }) {
    final result = create();
    if (formId != null) result.formId = formId;
    if (answers != null) result.answers.addEntries(answers);
    return result;
  }

  SubmitFormRequest._();

  factory SubmitFormRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SubmitFormRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubmitFormRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'formId')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'answers',
        entryClassName: 'SubmitFormRequest.AnswersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('form.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubmitFormRequest clone() => SubmitFormRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubmitFormRequest copyWith(void Function(SubmitFormRequest) updates) =>
      super.copyWith((message) => updates(message as SubmitFormRequest))
          as SubmitFormRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubmitFormRequest create() => SubmitFormRequest._();
  @$core.override
  SubmitFormRequest createEmptyInstance() => create();
  static $pb.PbList<SubmitFormRequest> createRepeated() =>
      $pb.PbList<SubmitFormRequest>();
  @$core.pragma('dart2js:noInline')
  static SubmitFormRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubmitFormRequest>(create);
  static SubmitFormRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get formId => $_getSZ(0);
  @$pb.TagNumber(1)
  set formId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFormId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFormId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get answers => $_getMap(1);
}

class SubmitFormResponse extends $pb.GeneratedMessage {
  factory SubmitFormResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    return result;
  }

  SubmitFormResponse._();

  factory SubmitFormResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SubmitFormResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubmitFormResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubmitFormResponse clone() => SubmitFormResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubmitFormResponse copyWith(void Function(SubmitFormResponse) updates) =>
      super.copyWith((message) => updates(message as SubmitFormResponse))
          as SubmitFormResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubmitFormResponse create() => SubmitFormResponse._();
  @$core.override
  SubmitFormResponse createEmptyInstance() => create();
  static $pb.PbList<SubmitFormResponse> createRepeated() =>
      $pb.PbList<SubmitFormResponse>();
  @$core.pragma('dart2js:noInline')
  static SubmitFormResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubmitFormResponse>(create);
  static SubmitFormResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class CreateFormRequest extends $pb.GeneratedMessage {
  factory CreateFormRequest({
    FormDefinition? form,
  }) {
    final result = create();
    if (form != null) result.form = form;
    return result;
  }

  CreateFormRequest._();

  factory CreateFormRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateFormRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateFormRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOM<FormDefinition>(1, _omitFieldNames ? '' : 'form',
        subBuilder: FormDefinition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateFormRequest clone() => CreateFormRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateFormRequest copyWith(void Function(CreateFormRequest) updates) =>
      super.copyWith((message) => updates(message as CreateFormRequest))
          as CreateFormRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateFormRequest create() => CreateFormRequest._();
  @$core.override
  CreateFormRequest createEmptyInstance() => create();
  static $pb.PbList<CreateFormRequest> createRepeated() =>
      $pb.PbList<CreateFormRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateFormRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateFormRequest>(create);
  static CreateFormRequest? _defaultInstance;

  @$pb.TagNumber(1)
  FormDefinition get form => $_getN(0);
  @$pb.TagNumber(1)
  set form(FormDefinition value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasForm() => $_has(0);
  @$pb.TagNumber(1)
  void clearForm() => $_clearField(1);
  @$pb.TagNumber(1)
  FormDefinition ensureForm() => $_ensure(0);
}

class CreateFormResponse extends $pb.GeneratedMessage {
  factory CreateFormResponse({
    $core.String? formId,
    $core.String? message,
  }) {
    final result = create();
    if (formId != null) result.formId = formId;
    if (message != null) result.message = message;
    return result;
  }

  CreateFormResponse._();

  factory CreateFormResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateFormResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateFormResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'form.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'formId')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateFormResponse clone() => CreateFormResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateFormResponse copyWith(void Function(CreateFormResponse) updates) =>
      super.copyWith((message) => updates(message as CreateFormResponse))
          as CreateFormResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateFormResponse create() => CreateFormResponse._();
  @$core.override
  CreateFormResponse createEmptyInstance() => create();
  static $pb.PbList<CreateFormResponse> createRepeated() =>
      $pb.PbList<CreateFormResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateFormResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateFormResponse>(create);
  static CreateFormResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get formId => $_getSZ(0);
  @$pb.TagNumber(1)
  set formId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFormId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFormId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
