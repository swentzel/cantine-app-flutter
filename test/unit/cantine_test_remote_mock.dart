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
    }
  });
}
