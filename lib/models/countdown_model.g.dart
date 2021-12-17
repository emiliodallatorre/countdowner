// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countdown_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountdownModel _$CountdownModelFromJson(Map<String, dynamic> json) =>
    CountdownModel(
      title: json['title'] as String,
      description: json['description'] as String,
      endTime: DateTime.parse(json['endTime'] as String),
      coverUrl: json['coverUrl'] as String,
    );

Map<String, dynamic> _$CountdownModelToJson(CountdownModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'endTime': instance.endTime.toIso8601String(),
      'coverUrl': instance.coverUrl,
    };
