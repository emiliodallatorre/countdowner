import 'package:json_annotation/json_annotation.dart';

part 'countdown_model.g.dart';

@JsonSerializable()
class CountdownModel {
  final String title, description;
  final DateTime endTime;
  final String coverUrl;

  CountdownModel({
    required this.title,
    required this.description,
    required this.endTime,
    required this.coverUrl,
  });

  factory CountdownModel.fromJson(Map<String, dynamic> parsedJson) => _$CountdownModelFromJson(parsedJson);

  Map<String, dynamic> toJson() => _$CountdownModelToJson(this);
}
