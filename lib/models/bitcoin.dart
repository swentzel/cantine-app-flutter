import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Bitcoin {
  double exRateBitcoinEuro;
  bool exRateAvailable;

  Bitcoin() {
    this.exRateBitcoinEuro = 0.0;
    this.exRateAvailable = false;
  }

  Future<void> fetchExRate() async {
    var uri = new Uri(
      scheme: "https",
      host: "api.coindesk.com",
      path: "/v1/bpi/currentprice/EUR.json",
    );

    final resp = await http.get(uri.toString());

    if (resp.statusCode != 200) {
      throw (resp.body);
    }

    var bcexc = json.decode(resp.body);
    // print(bcexc);

    print(bcexc['bpi']['EUR']);
    this.exRateBitcoinEuro = bcexc['bpi']['EUR']['rate_float'];
    this.exRateAvailable = true;
  }
}