import 'package:flutter/material.dart';
import 'models/cantine.dart';
import 'views/cantine_list.dart';
import 'globals.dart';
// import 'mocks/mock_cantines.dart';

void main() async {
  // final mockCantine = MockCantine.fetchAny();
  // final mockCantines = MockCantines.fetchAll();

  final cantines = await Cantine.fetchAll();

  await bitcoin.fetchExRate();

  // return runApp(MaterialApp(home: CantineDetail(mockCantine)));
    return runApp(MaterialApp(home: CantineList(cantines)));
}
