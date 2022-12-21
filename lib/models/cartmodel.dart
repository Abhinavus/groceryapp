import 'package:flutter/material.dart';
import 'package:inexsoftproject/models/repo.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale


  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get vegItems => listvegItems;

  get fruitItems => listfruitItems;

  get groceryItems => listgroceryItems;

  get meatItems => listmeatItems;

  // add item to cart
  void addvegItemToCart(int index) {
    _cartItems.add(listvegItems[index]);
    notifyListeners();
  }
  void addfruitItemToCart(int index) {
    _cartItems.add(listfruitItems[index]);
    notifyListeners();
  }

   void addgroceryItemToCart(int index) {
    _cartItems.add(listgroceryItems[index]);
    notifyListeners();
  }

   void addmeatItemToCart(int index) {
    _cartItems.add(listmeatItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}