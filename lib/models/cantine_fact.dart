import 'package:json_annotation/json_annotation.dart';

part 'cantine_fact.g.dart';

@JsonSerializable()
class CantineFact {
  final String name;
  final String subtitle;
  final String url;
  final String city;
  CantineFact({this.name, this.subtitle, this.url, this.city});

  factory CantineFact.fromJson(Map<String, dynamic> json) =>
      _$CantineFactFromJson(json);
}
