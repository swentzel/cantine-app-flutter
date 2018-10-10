import "package:json_annotation/json_annotation.dart";

part 'cantine.g.dart';

@JsonSerializable()
class Cantine {
  final String name;
  final String subtitle;
  final String url;
  final String city;
    
  Cantine({this.name, this.subtitle, this.url, this.city});

  factory Cantine.fromJson(Map<String, dynamic> json) =>
      _$CantineFromJson(json);
}
