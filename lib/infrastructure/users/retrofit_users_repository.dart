import 'package:built_collection/src/list.dart';
import 'package:flutter_bloc_test/domain/users/user.dart';
import 'package:flutter_bloc_test/domain/users/users_repository.dart';
import 'package:flutter_bloc_test/infrastructure/users/responses/user_response.dart';
import 'package:flutter_bloc_test/infrastructure/users/users_api.dart';
import 'package:rxdart/src/observables/observable.dart';

class RetrofitUsersRepository extends UsersRepository {
  final UsersApi api;

  RetrofitUsersRepository(this.api);

  @override
  Observable<BuiltList<User>> loadUsers() {
    return Observable.fromFuture(api.users()).map((response) => BuiltList.from(
        response.map((user) => _mapUserResponse(user))));
  }

  User _mapUserResponse(UserResponse user) => User((b) => b..name = user.login);
}
