import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:grpc/grpc_web.dart';
// Connection class
// Used for creating a UNIQUE conection by device
// ignore_for_file: non_constant_identifier_names

class ApiConnection {
  String? IP_ADDRESS;
  String? HOSTNAME;
  int? PORT;
  GrpcOrGrpcWebClientChannel? _connectionChannel;
  GrpcWebClientChannel? _webConnectionChannel;

  // Singleton configuration!
  ApiConnection._constructor();
  static final ApiConnection _instance = ApiConnection._constructor();

  factory ApiConnection({String? ip, String? hostname, int? port}) {
    _instance.IP_ADDRESS = ip;
    _instance.HOSTNAME = hostname;
    _instance.PORT = port;
    return _instance;
  }

  GrpcOrGrpcWebClientChannel? get connection => _connectionChannel;
  GrpcWebClientChannel? get webConnection => _webConnectionChannel;

  void setConfig({String? ip, String? hostname, int? port}) {
    IP_ADDRESS = ip;
    HOSTNAME = hostname;
    PORT = port;
  }

  void connect() {
    if (kIsWeb) {
      _webConnectionChannel =
          GrpcWebClientChannel.xhr(Uri.parse("http://192.168.0.51:50051"));
      return;
    }
    _connectionChannel = GrpcOrGrpcWebClientChannel.grpc(
      IP_ADDRESS!,
      port: PORT!,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
  }

  void disconnect() {}
}
