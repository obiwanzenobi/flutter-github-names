import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_bloc_test/domain/users/user.dart';

part 'list_state.g.dart';

abstract class ListState {}

abstract class Idle extends ListState implements Built<Idle, IdleBuilder> {
  Idle._();

  factory Idle([updates(IdleBuilder b)]) = _$Idle;
}

abstract class Loading extends ListState implements Built<Loading, LoadingBuilder> {
  Loading._();

  factory Loading([updates(LoadingBuilder b)]) = _$Loading;
}

abstract class Loaded extends ListState implements Built<Loaded, LoadedBuilder> {
  BuiltList<User> get data;

  Loaded._();

  factory Loaded([updates(LoadedBuilder b)]) = _$Loaded;

  static Loaded from(BuiltList<User> from) => Loaded((b) =>b..data.addAll(from));
}
