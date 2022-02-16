import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'cartlogic.dart';
import 'cart_itemcard.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Consumer<HomeController>(
          builder: (context, controller, __) {
            return Card(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => DisplayProduct(
                        productitem: controller.cart[index],
                      ),
                  separatorBuilder: (_, __) => const Divider(
                        thickness: 0.5,
                        height: 10,
                        color: Colors.blue,
                        indent: 50,
                        endIndent: 50,
                      ),
                  itemCount: controller.cart.length),
            );
          },
        ),
        Card(
          elevation: 20,
          child: Text(
            'TOTAL PRODUCTS: ${context.select((HomeController controller) => controller.totalCartItems)},      Total price: ${context.select((HomeController controller) => controller.totalPrice)}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ]),

      // bottomNavigationBar: BottomAppBar(
      //   elevation: 30,
      //   color: Colors.white,
      //   child: Card(
      //     elevation: 10,
      //     child: Text(
      //       'TOTAL PRODUCTS: ${context.select((HomeController controller) => controller.totalCartItems)},      Total price: ${context.select((HomeController controller) => controller.totalPrice)}',
      //       style: const TextStyle(
      //         fontWeight: FontWeight.bold,
      //         color: Colors.blue,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
