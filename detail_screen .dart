import 'package:TheLook/Booking/service_card.dart';
import 'package:TheLook/Booking/service.dart';
import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

import 'bookedscreen.dart';
import 'booklogic.dart';

class StylistDetailScreen extends StatefulWidget {
  //final Map<String, Object> stylist;
  final stylist;
  const StylistDetailScreen({Key? key, required this.stylist})
      : super(key: key);

  @override
  State<StylistDetailScreen> createState() => _StylistDetailScreenState();
}

class _StylistDetailScreenState extends State<StylistDetailScreen> {
  bool _isFavorited = true;

  int _favoriteCount = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 3 + 30,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    'https://media.istockphoto.com/photos/hairdresser-female-making-hair-extensions-to-young-woman-with-blonde-picture-id1305808016?b=1&k=20&m=1305808016&s=170667a&w=0&h=vne7jlO5iobPPKoNgunB1a4yQZ_y0MYwv3NY3xUTpHo=',
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.purple.withOpacity(0.1),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 30,
              left: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3 - 40,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: cardColor2,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        'Service List',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Expanded(
                          child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: demo_products.length,
                        itemBuilder: (context, index) => ServiceTile(
                          service: demo_products[index],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3 - 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 20,
                      height: MediaQuery.of(context).size.height / 6 + 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Positioned(
                            top: 30,
                            right: -40,
                            child: Image.asset(
                              widget.stylist['imgUrl'],
                              scale: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.stylist['stylistName'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.stylist['salonName'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Color(0xffFF8573),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.stylist['rating'],
                              style: const TextStyle(
                                color: Color(0xffFF8573),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              _favoriteCount.toString(),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: MediaQuery.of(context).size.height / 3 - 55,
              child: MaterialButton(
                onPressed: _toggleFavorite,

                padding: const EdgeInsets.all(10),
                shape: const CircleBorder(),
                color: Colors.white,
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  alignment: Alignment.centerRight,
                  icon: Center(
                    child: (_isFavorited
                        ? const Icon(Icons.favorite_border_outlined)
                        : const Icon(Icons.favorite)),
                  ),
                  color: Colors.red[500],
                  onPressed: _toggleFavorite,
                ),

                //Icon(OMIcons.favoriteBorder),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: Stack(
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BookedScreen();
                    },
                  ),
                );
              },
              child: const Text(
                'Bookings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              left: 25.0,
              child: Text(
                '${context.select((Controller2 controller) => controller.totalCartItems)}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount += 1;
        _isFavorited = false;
      } else {
        _favoriteCount -= 1;
        _isFavorited = true;
      }
    });
  }
}
