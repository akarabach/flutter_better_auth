import 'package:json_annotation/json_annotation.dart';

class DateTimeSerializer implements JsonConverter<DateTime, dynamic> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(json) {
    if (json is String) {
      return DateTime.parse(json);
    } else if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json);
    } else {
      throw FormatException("Invalid date format");
    }
  }

  @override
  toJson(DateTime object) {
    return object.toIso8601String();
  }
}
