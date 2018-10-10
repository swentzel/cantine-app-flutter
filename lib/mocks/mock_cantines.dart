import '../models/cantine.dart';

class MockCantines extends Cantine {
  static final List<Cantine> items = [
    Cantine(
        name: 'Casino 77',
        subtitle: 'NBR Betriebsrestaurant im Südwestpark',
        city: 'Nürnberg',
        url:
            'http://nbr.de/Cache/casino1_446_334_45649956-cec5-478d-88dd-3bfeae6c889d.jpg',
    ),
    Cantine(
        name: 'Mensa Insel Schütt',
        subtitle: 'Studentenwerk Erlangen-Nürnberg',
        city: 'Nürnberg',
        url:
            'http://www.werkswelt.de/data/uploads/gastronomie/slideshows/inselschuett-2016.jpg',
    ),
    Cantine(
        name: 'Mensateria Ohm',
        subtitle: 'Mensa an der TH Nürnberg (Ohm)',
        city: 'Nürnberg',
        url:
            'http://www.werkswelt.de/data/uploads/gastronomie/slideshows/hg-mensa-ohm.jpg',
    ),
  ];
  
  static Cantine fetchAny() {
    return MockCantines.items[0];
  }

  static List<Cantine> fetchAll() {
    return MockCantines.items;
  }
}
