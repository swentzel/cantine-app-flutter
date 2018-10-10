// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cantine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cantine _$CantineFromJson(Map<String, dynamic> json) {
  return Cantine(
      id: json['id'] as int,
      name: json['name'] as String,
      subtitle: json['subtitle'] as String,
      url: json['url'] as String,
      city: json['city'] as String);
}

Map<String, dynamic> _$CantineToJson(Cantine instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subtitle': instance.subtitle,
      'url': instance.url,
      'city': instance.city
    };
