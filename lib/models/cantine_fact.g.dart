// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cantine_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CantineFact _$CantineFactFromJson(Map<String, dynamic> json) {
  return CantineFact(
      id: json['id'] as int,
      name: json['name'] as String,
      subtitle: json['subtitle'] as String,
      url: json['url'] as String,
      city: json['city'] as String);
}

Map<String, dynamic> _$CantineFactToJson(CantineFact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subtitle': instance.subtitle,
      'url': instance.url,
      'city': instance.city
    };
