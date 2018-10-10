import 'dart:convert';
import 'package:test/test.dart';
import '../../lib/models/cantine.dart';

void main() {
  test('test cantine deserialization', () {
    const cantineJSON =
        '{ "name": "Mensa Insel Schütt", "subtitle": "Studentenwerk Erlangen-Nürnberg", "city": "Nürnberg"}';

    final cantineMap = json.decode(cantineJSON) as Map<String, dynamic>;

    expect("Mensa Insel Schütt", equals(cantineMap['name']));

    final cantine = Cantine.fromJson(cantineMap);

    expect(cantine.name, equals(cantineMap['name']));
    expect(cantine.subtitle, equals(cantineMap['subtitle']));
    expect(cantine.city, equals(cantineMap['city']));
    expect(cantine.url, equals(cantineMap['url']));
  });
}
