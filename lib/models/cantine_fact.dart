import 'package:json_annotation/json_annotation.dart';

part 'cantine_fact.g.dart';

@JsonSerializable()
class CantineFact {
  final int id;
  final String name;
  final String subtitle;
  final String url;
  final String city;
  CantineFact({this.id, this.name, this.subtitle, this.url, this.city});

  factory CantineFact.fromJson(Map<String, dynamic> json) =>
      _$CantineFactFromJson(json);
}
