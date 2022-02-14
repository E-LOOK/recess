import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

//void main() => runApp(const Listile());

class Rate extends StatefulWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Rate> {
  final double _initialRating = 2.5;
  final bool _isVertical = false;

  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ratingBar();
  }

  Widget ratingBar() {
    return RatingBar.builder(
      initialRating: _initialRating,
      minRating: 1,
      direction: _isVertical ? Axis.vertical : Axis.horizontal,
      allowHalfRating: true,
      unratedColor: Colors.white,
      itemCount: 5,
      itemSize: 20.0,
      itemPadding: const EdgeInsets.symmetric(horizontal: 0.5),
      itemBuilder: (context, _) => Icon(
        _selectedIcon ?? Icons.star,
        color: const Color(0xffb45202),
      ),
      onRatingUpdate: (rating) {
        setState(() {});
      },
      //updateOnDrag: true,
    );
  }
}
