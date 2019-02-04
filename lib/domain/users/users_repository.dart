import 'package:flutter_bloc_test/domain/users/user.dart';
import 'package:rxdart/rxdart.dart';
import 'package:built_collection/built_collection.dart';

abstract class UsersRepository {
  Observable<BuiltList<User>> loadUsers();
}
