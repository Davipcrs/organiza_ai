// Connection class
// Used for creating a UNIQUE conection by device
// ignore_for_file: non_constant_identifier_names

class ApiConnection {
  String? IP_ADDRESS;
  String? HOSTNAME;
  String? PORT;

  // Singleton configuration!
  ApiConnection._constructor();
  static final ApiConnection _instance = ApiConnection._constructor();

  static ApiConnection get instance => _instance;

  void setConfig({String? ip, String? hostname, String? port}) {
    IP_ADDRESS = ip;
    HOSTNAME = hostname;
    PORT = port;
  }

  void connect() {}

  void disconnect() {}
}
