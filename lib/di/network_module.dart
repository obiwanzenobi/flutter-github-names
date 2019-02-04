import 'package:flutter_bloc_test/infrastructure/users/responses/user_response.dart';
import 'package:flutter_bloc_test/infrastructure/users/users_api.dart';
import 'package:http/http.dart';
import 'package:jaguar_resty/routes/routes.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

class NetworkModule {
  BaseClient _httpClient;
  JsonRepo _serializersRepository;
  Route _baseRoute;

  NetworkModule() {
    _httpClient = Client();
    _serializersRepository = JsonRepo()..add(UserResponseSerializer());
    _baseRoute = _createBaseRoute(_httpClient);
  }

  Route _createBaseRoute(BaseClient client) =>
      route("https://api.github.com").withClient(client);

  Route get baseRoute => _baseRoute;

  JsonRepo get serializersRepository => _serializersRepository;

  BaseClient get httpClient => _httpClient;
}
