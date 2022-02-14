import 'package:TheLook/Booking/service.dart';

class ServiceItem {
  int quantity= 1;
 
  
  final Service service;
  
  ServiceItem({
  
    required this.service,
    
  });

  void increment() {
    quantity++;
  }

  void add() {

  }

  void substract() {
    quantity--;
  }
}
