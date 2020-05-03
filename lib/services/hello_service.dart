import 'grpc_commons.dart';
import '../model/google/protobuf/empty.pb.dart';
import '../model/hello.pb.dart';
import '../model/hello.pbgrpc.dart';

class HelloService {
  static Future<ResponseHello> SayHello() async {
    var client = HelloServiceClient(GrpcWebClientSingleton().client);
    return await client.sayHello(Empty());
  }
}
