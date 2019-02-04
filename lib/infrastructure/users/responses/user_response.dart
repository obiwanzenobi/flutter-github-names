import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'user_response.jser.dart';

class UserResponse {
  final String login;

  UserResponse(this.login);
}

@GenSerializer()
class UserResponseSerializer extends Serializer<UserResponse> with _$UserResponseSerializer {}
