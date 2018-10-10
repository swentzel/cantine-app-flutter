import 'package:flutter/material.dart';
import '../models/meal.dart';
import 'styles.dart';

class MealList extends StatelessWidget {
  final List<Meal> meals;

  MealList(this.meals);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }

  List<Widget> renderMealList(BuildContext context, List<Meal> meals) {
    var list = List<Widget>();
    for (int i = 0; i < meals.length; i++) {
      list.add(_sectionTitle(meals[i].name));
      list.add(_sectionText(meals[i].description));
    }
    return list;
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
        child:
            Text(text, textAlign: TextAlign.left, style: Styles.headerLarge));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
        child: Text(text, style: Styles.textDefault));
  }

  
}
