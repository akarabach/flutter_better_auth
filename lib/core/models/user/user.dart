import 'package:freezed_annotation/freezed_annotation.dart';

import '../date_time_serializer.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    @Default(false) bool emailVerified,
    String? image,
    @DateTimeSerializer() @Default(null) DateTime? createdAt,
    @DateTimeSerializer() @Default(null) DateTime? updatedAt,
    @Default(false) bool twoFactorEnabled,
    String? username,
    String? displayUsername,
    @Default(false) bool isAnonymous,
    String? phoneNumber,
    @Default(false) bool phoneNumberVerified,
    String? role,
    @Default(false) bool banned,
    String? banReason,
    DateTime? banExpires,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
