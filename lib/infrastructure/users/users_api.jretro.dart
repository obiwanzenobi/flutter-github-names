// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_api.dart';

// **************************************************************************
// JaguarHttpGenerator
// **************************************************************************

abstract class _$UsersApiClient implements ApiClient {
  final String basePath = "users";
  Future<List<UserResponse>> users() async {
    var req = base.get.path(basePath);
    return req.go(throwOnErr: true).map(decodeList);
  }
}
