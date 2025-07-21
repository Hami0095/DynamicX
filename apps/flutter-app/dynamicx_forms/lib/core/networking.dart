import 'package:forms_core/forms_core.dart';
import 'package:grpc/grpc_web.dart';
export 'package:forms_core/src/grpc_client.dart';


final formServiceClient = GrpcClient.instance.formService;
final channel = GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));
final formClient = FormServiceClient(channel);
