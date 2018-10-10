import '../models/meal.dart';

class MockMeals extends Meal {
  static final List<Meal> items = [
    Meal(
        name: 'Tip des Tages',
        description: 'Entenbrust mit Curry',
        price: 5,
    ),
    Meal(
        name: 'Mexikanischer Bohneneintopf',
        description: 'mit Chilli-Bohnen und Mais - vegitarisch',
        price: 4,
    ),
    Meal(
        name: 'Currywurst',
        description: '',
        price: 3,
    ),
  ];
  
  static Meal fetchAny() {
    return MockMeals.items[0];
  }

  static List<Meal> fetchAll() {
    return MockMeals.items;
  }
}
