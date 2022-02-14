import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'booked_itemcard.dart';
import 'booklogic.dart';

class BookedScreen extends StatelessWidget {
  const BookedScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          ' My Bookings',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Consumer<Controller2>(
        builder: (context, controller, __) {
          return ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => DisplayProduct(
                    serviceitem: controller.bookings[index],
                  ),
              itemCount: controller.bookings.length);
        },
      ),
    );
  }
}
