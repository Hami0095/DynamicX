import 'package:dynamicx_forms/core/networking.dart' show formClient;
import 'package:forms_core/forms_core.dart';

class FormRepository {
  
  // Future<FormDefinition> fetchFormSchema(String formId) async {
    
  //   return FormDefinition(
  //     formId: formId,
  //     title: "User Feedback Form",
  //     steps: [
  //       FormStep(
  //         stepId: "step1",
  //         title: "Basic Info",
  //         questions: [
  //           Question(
  //             questionId: "name",
  //             label: "What’s your name?",
  //             type: QuestionType.TEXT,
  //             isRequired: true,
  //           ),
  //           Question(
  //             questionId: "email",
  //             label: "Your email address?",
  //             type: QuestionType.TEXT,
  //             isRequired: false,
  //           ),
  //         ],
  //       ),
  //       FormStep(
  //         stepId: "step2",
  //         title: "Experience",
  //         questions: [
  //           Question(
  //             questionId: "satisfaction",
  //             label: "How satisfied are you with our app?",
  //             type: QuestionType.RADIO,
  //             options: ["Very Satisfied", "Neutral", "Dissatisfied"],
  //             isRequired: true,
  //           ),
  //           Question(
  //             questionId: "birthdate",
  //             label: "Your birthday?",
  //             type: QuestionType.DATE,
  //             isRequired: false,
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }


  Future<FormDefinition> fetchSchema() async {
    final request = FormRequest(); // Add metadata if needed
    final response = await formClient.getFormSchema(request);
    return response;
  }


  Future<SubmitFormResponse> submitForm(
    String formId,
    Map<String, String> answers,
  ) => GrpcClient.instance.formService.submitForm(
    SubmitFormRequest() 
      ..formId = formId
      ..answers.addAll(answers),
  );
}
