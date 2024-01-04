import 'package:cofeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Bakso Isi Hati',
      image: 'lib/assets/bakso.png',
      price: 'Rp. 5.000',
    ),
    Coffee(
      name: 'Bakso Isi Telur',
      image: 'lib/assets/bakso.png',
      price: 'Rp. 5.000',
    ),
    Coffee(
      name: 'Bakso Tahu',
      image: 'lib/assets/bakso.png',
      price: 'Rp. 5000',
    ),
    Coffee(
      name: 'Bakso Pangsit',
      image: 'lib/assets/bakso.png',
      price: 'Rp. 5.000',
    ),
    Coffee(
      name: 'Mie Ayam Bakso',
      image: 'lib/assets/ramen.png',
      price: 'Rp. 10.000',
    ),
    Coffee(
      name: 'Mie Ayam',
      image: 'lib/assets/ramen.png',
      price: 'Rp. 8.000',
    ),
    Coffee(
      name: 'Es Teh',
      image: 'lib/assets/ice-tea.png',
      price: 'Rp. 5.000',
    ),
    Coffee(
      name: 'Es Jeruk',
      image: 'lib/assets/orange-juice.png',
      price: 'Rp. 5.000',
    ),
  ];

  final List<Coffee> _userCart = [];

  List<Coffee> coffeeShop() => _shop;

  List<Coffee> userCart() => _userCart;

// add to cart
  void addToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item
  void removItemFromCard(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
