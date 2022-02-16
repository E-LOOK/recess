import 'package:flutter/material.dart';
import 'Productitem.dart';
import 'product_list.dart';

enum HomeState { normal, cart }

class HomeController extends ChangeNotifier {
  HomeState homeState = HomeState.normal;

  List<ProductItem> cart = [];

  ProductItem? productItem;

  void changeHomeState(HomeState state) {
    homeState = state;
    notifyListeners();
  }

  void addProductToCart(Product product) {
    for (ProductItem item in cart) {
      if (item.product.title == product.title) {
        item.increment();
        //cart.add(ProductItem(product: product));
        notifyListeners();
        return;
      }
    }
    cart.add(ProductItem(product: product));
    notifyListeners();
  }

  void removeProductFromCart(ProductItem productitem) {
    cart.remove(productitem);
    notifyListeners();
  }

  void reduceqty(ProductItem productitem) {
    productitem.substract();
    notifyListeners();
  }

  void increaseqty(ProductItem productitem) {
    productitem.increment();
    notifyListeners();
  }

  // void setProduct(ProductItem product) {
  //   productItem = product;
  //   notifyListeners();
  // }

  int get totalCartItems => cart.fold(
      0, (previousValue, productitem) => previousValue + productitem.quantity);

  double get totalPrice => cart.fold(
      0,
      (previousValue, productitem) =>
          previousValue + (productitem.product.price * productitem.quantity));
}
