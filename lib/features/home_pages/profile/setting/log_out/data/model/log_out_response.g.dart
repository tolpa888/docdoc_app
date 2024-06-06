// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_out_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogoutResponse _$LogoutResponseFromJson(Map<String, dynamic> json) =>
    LogoutResponse(
      json['message'] as String?,
      json['data'] as List<dynamic>?,
      json['status'] as bool,
      json['code'] as int,
    );

Map<String, dynamic> _$LogoutResponseToJson(LogoutResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };
