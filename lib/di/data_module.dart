import 'package:flutter_bloc_test/di/network_module.dart';
import 'package:flutter_bloc_test/domain/users/users_repository.dart';
import 'package:flutter_bloc_test/infrastructure/users/retrofit_users_repository.dart';
import 'package:flutter_bloc_test/infrastructure/users/users_api.dart';

class DataModule {
  UsersApi _usersApi;
  UsersRepository _usersRepository;

  DataModule(NetworkModule networkModule) {
    _usersApi = UsersApi(networkModule.baseRoute)
      ..jsonConverter = networkModule.serializersRepository;

    _usersRepository = RetrofitUsersRepository(_usersApi);
  }

  UsersRepository get usersRepository => _usersRepository;

  UsersApi get usersApi => _usersApi;
}
