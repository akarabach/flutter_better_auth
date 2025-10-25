// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Session _$SessionFromJson(Map<String, dynamic> json) => _Session(
  id: json['id'] as String,
  token: json['token'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  createdAt: const DateTimeSerializer().fromJson(json['createdAt']),
  updatedAt: const DateTimeSerializer().fromJson(json['updatedAt']),
  ipAddress: json['ipAddress'] as String?,
  userAgent: json['userAgent'] as String?,
  userId: json['userId'] as String,
  impersonatedBy: json['impersonatedBy'] as String?,
  activeOrganizationId: json['activeOrganizationId'] as String?,
);

Map<String, dynamic> _$SessionToJson(_Session instance) => <String, dynamic>{
  'id': instance.id,
  'token': instance.token,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'createdAt': _$JsonConverterToJson<dynamic, DateTime>(
    instance.createdAt,
    const DateTimeSerializer().toJson,
  ),
  'updatedAt': _$JsonConverterToJson<dynamic, DateTime>(
    instance.updatedAt,
    const DateTimeSerializer().toJson,
  ),
  'ipAddress': instance.ipAddress,
  'userAgent': instance.userAgent,
  'userId': instance.userId,
  'impersonatedBy': instance.impersonatedBy,
  'activeOrganizationId': instance.activeOrganizationId,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
