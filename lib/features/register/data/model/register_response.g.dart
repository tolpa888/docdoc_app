// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      json['message'] as String?,
      json['data'] == null
          ? null
          : RegisterData.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as bool?,
      json['code'] as int?,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.registerData,
      'status': instance.status,
      'code': instance.code,
    };

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) => RegisterData(
      json['token'] as String?,
      json['username'] as String?,
    );

Map<String, dynamic> _$RegisterDataToJson(RegisterData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.username,
    };
