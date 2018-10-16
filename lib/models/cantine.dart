import "package:json_annotation/json_annotation.dart";
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../endpoint.dart';

part 'cantine.g.dart';

@JsonSerializable()
class Cantine {
  final int id;
  final String name;
  final String subtitle;
  final String url;
  final String city;
    
  Cantine({this.id, this.name, this.subtitle, this.url, this.city});

  factory Cantine.fromJson(Map<String, dynamic> json) =>
      _$CantineFromJson(json);

  static Future<List<Cantine>> fetchAll() async {
    var uri = Endpoint.uri('/cantines.json');

    final resp = await http.get(uri.toString());

    if (resp.statusCode != 200) {
      throw (resp.body);
    }
    List<Cantine> list = new List<Cantine>();
    for (var jsonItem in json.decode(resp.body)) {
      
      list.add(Cantine.fromJson(jsonItem));
    }
    return list;
  }

  static Future<Cantine> fetchByID(int id) async {
    var uri = Endpoint.uri('/cantines.json/$id');

    final resp = await http.get(uri.toString());

    if (resp.statusCode != 200) {
      throw (resp.body);
    }
    final Map<String, dynamic> itemMap = json.decode(resp.body);
    return Cantine.fromJson(itemMap);
  }

  static Future<Cantine> fetchAny() async {
    return Cantine.fetchByID(1);
  }
}
