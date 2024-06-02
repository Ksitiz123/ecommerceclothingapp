import 'package:ecommerce_mobile/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {

  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Compression Shirt", 
      price: 99.99, 
      description: "Sports compression shirt", 
      imagepath: 'assets/compression.webp',

      //imagePath: imagePath,
    ),


    // product 2
    Product(
      name: "Hoddie", 
      price: 99.99, 
      description: "Hoddie for men", 
      imagepath: 'assets/hoddie1.webp',

      //imagePath: imagePath,
    ),

    // product 3
    Product(
      name: "Shirt", 
      price: 99.99, 
      description: "A formal shirt for men", 
      imagepath: 'assets/shirt.jpg',

      //imagePath: imagePath,
    ),

    // product 4
    Product(
      name: "Black Hoddie", 
      price: 99.99, 
      description: "Black Hoddie for men", 
      imagepath: 'assets/blackhodie.jpg',
      //imagePath: imagePath,
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

}