import 'dart:convert';
import 'package:test/test.dart';
import '../../lib/models/cantine.dart';

void main() {
  test('test cantine remote mock', () async {
    
    final cantines = await Cantine.fetchAll();
    for (var cantine in cantines) {
      expect(cantine.name, hasLength(greaterThan(0)));
      expect(cantine.subtitle, hasLength(greaterThan(0)));
      expect(cantine.city, hasLength(greaterThan(0)));

      /*
      final fetchedLocation = await Cantine.fetchByID(location.id);
      expect(fetchedLocation.name, equals(location.name));
      expect(fetchedLocation.url, equals(location.url));
      expect(fetchedLocation.facts, hasLength(location.facts.length));
      */
    }
  });
}
