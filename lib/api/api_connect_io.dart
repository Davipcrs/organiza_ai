import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

// Connection class
// Used for creating a UNIQUE conection by device
// ignore_for_file: non_constant_identifier_names

class ApiConnection {
  String? IP_ADDRESS;
  String? HOSTNAME;
  int? PORT;

  //GrpcWebClientChannel? _webConnectionChannel;

  // Singleton configuration!
  ApiConnection._constructor();
  static final ApiConnection _instance = ApiConnection._constructor();

  factory ApiConnection({String? ip, String? hostname, int? port}) {
    _instance.IP_ADDRESS = ip;
    _instance.HOSTNAME = hostname;
    _instance.PORT = port;
    return _instance;
  }

  //GrpcWebClientChannel? get webConnection => _webConnectionChannel;

  void setConfig({String? ip, String? hostname, int? port}) {
    IP_ADDRESS = ip;
    HOSTNAME = hostname;
    PORT = port;
  }

  returnConnection() {
    var connectionChannel = GrpcOrGrpcWebClientChannel.grpc(
      IP_ADDRESS!,
      port: PORT!,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    return connectionChannel;
  }

  void disconnect() {}
}
