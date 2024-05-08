
import 'package:json_annotation/json_annotation.dart';
part 'register_response.g.dart';

@JsonSerializable()

class RegisterResponse {
  final String? message;
  @JsonKey(name: 'data')
  final RegisterData? registerData;
  final bool? status;
  final int? code;

  RegisterResponse(this.message, this.registerData, this.status, this.code);
  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

}

@JsonSerializable()
class RegisterData {
  final String? token;
  final String? username;

  RegisterData(this.token, this.username);
  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}