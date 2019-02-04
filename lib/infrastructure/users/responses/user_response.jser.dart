// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$UserResponseSerializer implements Serializer<UserResponse> {
  @override
  Map<String, dynamic> toMap(UserResponse model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'login', model.login);
    return ret;
  }

  @override
  UserResponse fromMap(Map map) {
    if (map == null) return null;
    final obj =
        new UserResponse(map['login'] as String ?? getJserDefault('login'));
    return obj;
  }
}
