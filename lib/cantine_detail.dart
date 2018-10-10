import 'package:flutter/material.dart';
import 'models/cantine.dart';
import 'styles.dart';

class CantineDetail extends StatelessWidget {
  final Cantine cantine;

  CantineDetail(this.cantine);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(cantine.name, style: Styles.navBarTitle)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, cantine),
        ));
  }

  List<Widget> _renderBody(BuildContext context, Cantine cantine) {
    var result = List<Widget>();
    result.add(_bannerImage(cantine.url, 170.0));
    // result.addAll(_renderFacts(context, cantine));
    return result;
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}
