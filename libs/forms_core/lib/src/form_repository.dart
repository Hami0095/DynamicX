import 'package:forms_core/forms_core.dart';
import 'package:forms_core/src/generated/proto/form.pb.dart';

class FormRepository {
  Future<FormDefinition> fetchFormSchema(String formId) async {
    final request = FormRequest()..formId = formId;
    return await GrpcClient.instance.formService.getFormSchema(request);
  }

  Future<SubmitFormResponse> submitAnswers(
      String formId, Map<String, String> answers) async {
    final request = SubmitFormRequest() 
      ..formId = formId
      ..answers.addAll(answers);
    return await GrpcClient.instance.formService.submitForm(request);
  }
}
