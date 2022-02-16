

import 'product_list.dart';

class ProductItem {
  int quantity = 1;

  final Product product;

  //num price;

  ProductItem({
    required this.product,
  });

  void increment() {
    quantity++;
  }

  void add() {}

  void substract() {
    quantity--;
  }
}
