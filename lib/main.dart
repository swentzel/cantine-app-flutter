import 'package:flutter/material.dart';
// import 'location_detail.dart';
// import 'mocks/mock_location.dart';
// import 'cantine_detail.dart';
import 'cantine_list.dart';
import 'mocks/mock_cantines.dart';

void main() {
  // final mockCantine = MockCantine.fetchAny();
  final mockCantines = MockCantines.fetchAll();

  // return runApp(MaterialApp(home: CantineDetail(mockCantine)));
    return runApp(MaterialApp(home: CantineList(mockCantines)));
}
