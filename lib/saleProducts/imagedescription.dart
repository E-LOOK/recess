import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'product_list.dart';
//import 'package:shopping_cart_side_example/product.dart';

class Desription extends StatelessWidget {
  const Desription({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mycolor,
        title: const Text('Description'),
      ),
      body: Stack(children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: CachedNetworkImage(
              imageUrl:
                  'https://media.istockphoto.com/photos/brunette-woman-with-shiny-long-curly-hair-picture-id928566238?k=20&m=928566238&s=612x612&w=0&h=ko-9dK6h9KexA5WQfe1f0U-SOzY2cJux-PgI2hVpItE=',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Card(
            color: const Color(0xffFFF0EB),
            margin: const EdgeInsets.all(10),
            elevation: 10,
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl: product.image,
                fit: BoxFit.cover,
              ),
              title: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                product.description,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              focusColor: Colors.black,
              contentPadding: const EdgeInsets.all(18),
            ),
          ),
        ),
      ]),
    );
  }
}
