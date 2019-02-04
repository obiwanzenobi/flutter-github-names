import 'package:built_value/built_value.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {

  String get name;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;
}
