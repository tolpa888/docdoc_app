import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequesBody {
  final String? email;
  final String? password;

  LoginRequesBody(this.email, this.password);

  Map<String, dynamic> toJson() => _$LoginRequesBodyToJson(this);
}