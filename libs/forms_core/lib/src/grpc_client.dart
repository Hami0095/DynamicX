// import 'package:grpc/grpc.dart';
// import 'generated/proto/form.pbgrpc.dart';

// class GrpcClient {
//   late final ClientChannel channel;
//   late final FormServiceClient formService;

//   GrpcClient._() {
//     channel = ClientChannel(
//       'localhost', // or your backend IP
//       port: 50051,
//       options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
//     );
//     formService = FormServiceClient(channel);
//   }

//   static final instance = GrpcClient._();
// }

import 'package:forms_core/forms_core.dart';
import 'package:grpc/grpc_web.dart';

class GrpcClient {
  late final FormServiceClient formService;

  GrpcClient._privateConstructor() {
    final channel =
        GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));
    formService = FormServiceClient(channel);
  }

  static final instance = GrpcClient._privateConstructor();
}
