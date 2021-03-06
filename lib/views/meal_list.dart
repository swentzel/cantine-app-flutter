import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../globals.dart';
import '../models/meal.dart';
import 'styles.dart';

class MealList extends StatelessWidget {
  final List<Meal> meals;

  MealList(this.meals);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }

  ListView renderMealList(BuildContext context, List<Meal> meals) {

    var listView = new ListView.builder(
      padding: new EdgeInsets.all(8.0),
      itemCount: meals.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: _mealAvatar(meals[index].url),
          title: _mealTitle(meals[index].name),
          subtitle: _mealTileText(meals[index].description, meals[index].price),
        );
      },
    );

    return listView;
  }

  Widget _mealTitle(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(0.0, 25.0, 5.0, 0.0),
        child:
            Text(text, textAlign: TextAlign.left, style: Styles.textListTitel));
  }

  Widget _mealTileText(String description, double price) {

    Row row = new Row(
      children: <Widget>[
        new Expanded(
          child: new Text(description, style: Styles.textDefault),
        ),
        new Container(
          child: _mealPrice(price)
        ),
      ],

    );
    return row;
  }

  Widget _mealAvatar(String mealAvatarUrl) {
    
    if(mealAvatarUrl.isNotEmpty) {
      return new CircleAvatar(
        backgroundImage: new NetworkImage(mealAvatarUrl),
      );
    } else {
      return Icon(Icons.fastfood);
    }
  } 

  Widget _mealPrice(double price) {
    final formatCurrency = new NumberFormat.simpleCurrency(locale: "de_DE", name: "EUR");
    final formatBitcoin = new NumberFormat("0.00000");

    String priceString = formatCurrency.format(price);

    if(bitcoin.exRateAvailable) {
      double bcPrice = price / bitcoin.exRateBitcoinEuro;
      priceString = priceString + " / " + formatBitcoin.format(bcPrice) + " BTC";
    }

    return new Text(priceString, textAlign: TextAlign.right);

  }

  
}
