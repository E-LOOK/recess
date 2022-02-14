import 'package:TheLook/Booking/service.dart';
import 'package:flutter/material.dart';

import 'servicetitem.dart';

enum HomeState { normal, bookings }

class Controller2 extends ChangeNotifier {
  HomeState homeState = HomeState.normal;

  List<ServiceItem> bookings = [];

  void changeHomeState(HomeState state) {
    homeState = state;
    notifyListeners();
  }

  void addProductToCart(Service service) {
    for (ServiceItem item in bookings) {
      if (item.service.title == service.title) {
        //item.increment();
        //bookings.add(ProductItem(product: product));
        bookings.removeLast();
        notifyListeners();
        return;
      }
    }
    bookings.add(
      ServiceItem(service: service),
    );
    notifyListeners();
  }

  void removeProductFromCart(ServiceItem serviceitem) {
    bookings.remove(serviceitem);
    notifyListeners();
  }

  void reduceqty(ServiceItem serviceitem) {
    serviceitem.substract();
    notifyListeners();
  }

  // void increaseqty(ServiceItem serviceitem) {
  //   serviceitem.increment();
  //   notifyListeners();
  // }

  int get totalCartItems => bookings.fold(
      0, (previousValue, productitem) => previousValue + productitem.quantity);

  int get totalPrice => bookings.fold(
      0,
      (previousValue, serviceitem) =>
          previousValue + (serviceitem.service.price * serviceitem.quantity));
}
