import 'package:TheLook/Booking/service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bookedscreen.dart';
import 'booklogic.dart';
import 'service_card.dart';

class ServiceBuilder extends StatelessWidget {
  const ServiceBuilder({
    Key? key,
    required this.service,
  }) : super(key: key);
  final Service service;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: demo_products.length,
              itemBuilder: (context, index) => ServiceTile(
                service: demo_products[index],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            foregroundColor: Colors.white,
            onPressed: () {},
            child: Stack(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const BookedScreen();
                        },
                      ),
                    );
                  },
                ),
                Positioned(
                  top: 0.0,
                  left: 25.0,
                  child: Text(
                    '${context.select((Controller2 controller) => controller.totalCartItems)}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
