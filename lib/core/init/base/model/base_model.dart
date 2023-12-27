import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
abstract class BaseModel<T> {
  Map<String, Object> toJson();

  T fromJson(Map<String, Object> json);
}