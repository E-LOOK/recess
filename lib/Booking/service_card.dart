import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'booklogic.dart';
import 'service.dart';

class ServiceTile extends StatefulWidget {
  const ServiceTile({
    Key? key,
    required this.service,
  }) : super(key: key);
  final Service service;

  @override
  State<ServiceTile> createState() => _ServiceTileState();
}

class _ServiceTileState extends State<ServiceTile> {
  bool _isFavorite = true;
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller2>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: cardColor1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      child: Text(
                        widget.service.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${widget.service.duration} min',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  "\$${widget.service.price} ",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                MaterialButton(
                    onPressed: () {},
                    color: const Color(0xffFF8573),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                        child: (_isFavorite
                            ? const Text('Book')
                            : const Icon(
                                Icons.check,
                                color: Colors.green,
                              )),
                        onLongPress: () {},
                        onPressed: () {
                          toggleTick();
                          controller.addProductToCart(widget.service);
                        })),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void toggleTick() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
      } else {
        _isFavorite = true;
      }
    });
  }
}
