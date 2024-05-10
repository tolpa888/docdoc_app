// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequesBody _$LoginRequesBodyFromJson(Map<String, dynamic> json) =>
    LoginRequesBody(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LoginRequesBodyToJson(LoginRequesBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
