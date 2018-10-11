import '../models/meal.dart';

class MockMeals extends Meal {
  static final List<Meal> items = [
    Meal(
        name: 'Tip des Tages',
        description: 'Entenbrust mit Curry',
        price: 5.0,
        url: "https://pbs.twimg.com/profile_images/601139316358647808/m0wjlvII_400x400.jpg",
    ),
    Meal(
        name: 'Mexikanischer Bohneneintopf',
        description: 'mit Chilli-Bohnen und Mais - vegitarisch',
        price: 4.3,
        url: "https://i.pinimg.com/originals/99/47/98/9947983977bf99a0d41eaf4875d79e13.jpg",
    ),
    Meal(
        name: 'Currywurst mit Pommes',
        description: '',
        price: 4.5,
        url: "https://media-cdn.tripadvisor.com/media/photo-s/0d/20/0c/ce/standard-currywurst-pommes.jpg",
    ),
    Meal(
        name: 'Schwarzer Lachsburger',
        description: '',
        price: 8.9,
        url: "",
    ),
    Meal(
        name: 'Gelber Bulgursalat',
        description: '',
        price: 3.2,
        url: "https://images.eatsmarter.de/sites/default/files/styles/576x432/public/roter-bulgursalat-456276.jpg",
    ),
    Meal(
        name: 'Alaska Seelachsfilet',
        description: '',
        price: 4.7,
        url: "https://www.kuechengoetter.de/uploads/media/630x630/01/63071-seelachsfilet-an-kraeuter-weissweinsauce-gurkensalat-und-gebutterten-salzkartoffeln.jpg?v=1-0",
    ),
    Meal(
        name: 'Chinesische Ente mit Kohl',
        description: '',
        price: 9.3,
        url: "https://images.eatsmarter.de/sites/default/files/styles/576x432/public/ente-mit-kohl-425314.jpg",
    ),
    Meal(
        name: 'Linseneintopf mit Brötchen',
        description: '',
        price: 3.9,
        url: "https://www.gutekueche.at/img/rezept/5204/linseneintopf.jpg",
    ),
    Meal(
        name: 'Salatbuffet',
        description: '',
        price: 3.0,
        url: "",
    ),
    Meal(
        name: 'Sojabrot',
        description: '',
        price: 2.0,
        url: "",
    ),
    Meal(
        name: 'Nudeltopf',
        description: '',
        price: 3.5,
        url: "",
    ),
  ];
  
  static Meal fetchAny() {
    return MockMeals.items[0];
  }

  static List<Meal> fetchAll() {
    return MockMeals.items;
  }
}
