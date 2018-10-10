import 'package:flutter/material.dart';
import '../models/cantine.dart';
import './cantine_detail.dart';
import 'styles.dart';

class CantineList extends StatelessWidget {
  final List<Cantine> cantines;

  CantineList(this.cantines);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kantinen", style: Styles.navBarTitle)),
      body: ListView.builder(
          itemCount: this.cantines.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: _itemThumbnail(this.cantines[index]),
              title: _itemTitle(this.cantines[index]),
              subtitle: _itemSubtitle(this.cantines[index]),
              onTap: () => _navigateToCantineDetail(context, this.cantines[index])
            );
          }),
    );
  }

  void _navigateToCantineDetail(BuildContext context, Cantine cantine) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CantineDetail(cantine),
        ));
  }

  Widget _itemThumbnail(Cantine cantine) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(cantine.url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(Cantine cantine) {
    return Text('${cantine.name}', style: Styles.textListTitel);
  }
  Widget _itemSubtitle(Cantine cantine) {
    return Text('${cantine.subtitle}', style: Styles.textSubtitle);
  }
}
