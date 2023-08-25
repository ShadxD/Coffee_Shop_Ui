import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeList extends ChangeNotifier {
  //coffee for sale list(konsi-konsi coffe hai esa)

  final List<Coffee> _shop = [
    //black coffee
    Coffee(
        name: 'Long Black',
        price: '250',
        imagePath: 'assets/images/coffee.png'),

    //latte
    Coffee(name: 'Latte', price: '350', imagePath: 'assets/images/latte.png'),

    //espresso
    Coffee(
        name: 'Espresso',
        price: '200',
        imagePath: 'assets/images/expresso.png'),

    //iced coffee
    Coffee(
        name: 'Iced Coffee',
        price: '400',
        imagePath: 'assets/images/icedcoffee.png'),
  ];

  //user cart
  final List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeList => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
  }

  //remove item to cart
  void removeItemToCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
