import 'package:flutter_bloc_test/infrastructure/users/responses/user_response.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';

part 'users_api.jretro.dart';

@GenApiClient(path: "users")
class UsersApi extends ApiClient with _$UsersApiClient {
  final Route base;

  UsersApi(this.base);

  @GetReq()
  Future<List<UserResponse>> users();
}
