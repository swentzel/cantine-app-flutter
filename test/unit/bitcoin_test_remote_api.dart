import 'package:test/test.dart';
import 'dart:async';
import '../../lib/models/bitcoin.dart';

void main() async {
  test('test bitcoin remote api', () async {
    
    Bitcoin bc = new Bitcoin();

    expect(bc.exRateAvailable, isFalse);
    expect(bc.exRateBitcoinEuro, equals(0.0));

    await bc.fetchExRate();
    expect(bc.exRateAvailable, isTrue);

  });
}
