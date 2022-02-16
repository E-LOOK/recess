import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Modules/search_form.dart';
import 'kids/kids_builder.dart';
import 'men/men_builder.dart';
import 'saleProducts/products_builder.dart';
import 'services/service_builder.dart';
import 'stylist/stylists_builder.dart';
import 'women styles/women_builder.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 320,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1608278618512-c5968bfa0523?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFuaWN1cmUlMjBhbmQlMjBwZWRpY3VyZXxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1560869713-7d0a29430803?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGFpciUyMHNhbG9ufGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://media.istockphoto.com/photos/top-view-of-client-sitting-close-to-sink-picture-id1339268647?b=1&k=20&m=1339268647&s=170667a&w=0&h=fz2acI25iew9UDI_9evWsYXgNPK0-pHSJqaYXwntqnw="),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1612271103514-cb853901b498?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGhhaXIlMjBzYWxvbnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1523260578934-e9318da58c8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGhhaXIlMjBzYWxvb24lMjBhZHZlcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 350.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 600),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SearchForm(),
            ),
            const Stylists(),
            const Services(),
            const PopularProducts(),
            const TrendingDesigns(),
            Divider(),
            const WomenDesigns(),
            Divider(),
            const Kids(),
          ],
        ),
      ]),
    );
  }
}
