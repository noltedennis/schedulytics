import 'package:grpc/grpc_web.dart';

class GrpcWebClientSingleton {
  GrpcWebClientChannel client;
  static final GrpcWebClientSingleton _singleton =
      new GrpcWebClientSingleton._internal();

  factory GrpcWebClientSingleton() => _singleton;

  GrpcWebClientSingleton._internal() {
    client = GrpcWebClientChannel.xhr(Uri.parse('http://localhost'));
  }
}
