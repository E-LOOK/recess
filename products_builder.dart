import 'package:flutter/material.dart';
import 'product_list.dart';
import 'productscard.dart';
import '../Modules/section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: SectionTitle(
            title: "Products",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: List.generate(
                  demo_products.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: ProductsCard(
                      name: demo_products[index].title,
                      image: demo_products[index].image,
                      price: demo_products[index].price,

                      //bgColor: demo_products[index].,
                      press: () {}, product: demo_products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
