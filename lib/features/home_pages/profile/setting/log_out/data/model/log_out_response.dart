import 'package:json_annotation/json_annotation.dart';
part 'log_out_response.g.dart';

@JsonSerializable()
class LogoutResponse {
  final String? message;
  final List? data;
  final bool status;
  final int code;

  LogoutResponse(this.message, this.data, this.status, this.code);

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);

}
