import 'package:flutter/material.dart';
import 'package:coffee_project/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
        name: "Hot Coffee",
        price: "\$ 2.49",
        
        imagePath: "images/hotcoffee.png"),
    Coffee(
        name: "Iced Coffee",
        price: "\$ 2.99",
        imagePath: "images/icedcoffee.png"),
    Coffee(name: "Latte", price: "\$ 3.49", imagePath: "images/latte.png"),
    Coffee(
        name: "Espresso", price: "\$ 3.99", imagePath: "images/espresso.png"),
  ];

  final List<Coffee> _userCart = [];
  List<Coffee> get coffeeShop => _shop;
  List<Coffee> get userCart => _userCart;

  void addItemtocart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeFromcart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
