import 'api_connect_io.dart' if (dart.library.html) "api_connect_web.dart"
    as multiplatform;

createApiConnectionInstance() {
  return multiplatform.ApiConnection();
}
