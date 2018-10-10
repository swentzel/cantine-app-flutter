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

    final mockMeals = MockMeals.fetchAll();

    result.add(_bannerImage(cantine.url, 170.0));
    result.addAll(_renderMeals(context, mockMeals));
    return result;
  }

  List<Widget> _renderMeals(BuildContext context, List<Meal> meals) {
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
