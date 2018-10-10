import './meal.dart';

class Cantine {
  final String name;
  final String url;
  final String subtitle;
  final String city;
  
  final List<Meal> meals;
  // Cantine({this.name, this.url, this.facts});
  
  Cantine({this.name, this.subtitle, this.city, this.url});
  
  void addMeal(Meal meal) {
    this.meals.add(meal);
  }
}
