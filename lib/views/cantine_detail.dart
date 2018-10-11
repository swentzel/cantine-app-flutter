import 'package:flutter/material.dart';
import '../models/cantine.dart';
import '../models/meal.dart';
import './meal_list.dart';
import 'styles.dart';

import '../mocks/mock_meals.dart';

class CantineDetail extends StatelessWidget {
  final Cantine cantine;

  CantineDetail(this.cantine);

  @override
  Widget build(BuildContext context) {
    final mockMeals = MockMeals.fetchAll();
    return Scaffold(
        appBar: AppBar(title: Text(cantine.name, style: Styles.navBarTitle)),
        body: _renderMeals(context, mockMeals)
    );
  }

  
  
  ListView _renderMeals(BuildContext context, List<Meal> meals) {
    MealList mealList = new MealList(meals);

    return mealList.renderMealList(context, meals);
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}
