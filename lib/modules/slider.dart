import 'package:TheLook/Modules/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                      "https://i.pinimg.com/564x/7b/e1/a8/7be1a813b5cdd692a042be3db55b2fe2.jpg"),
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
                      "https://i.pinimg.com/236x/97/e2/fd/97e2fd6a5f428e140e942c7e204803bc.jpg"),
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
                      "https://i.pinimg.com/564x/18/49/8c/18498c3bf04473547e8fc11e362c5644.jpg"),
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
                      "https://i.pinimg.com/564x/f3/39/36/f3393697f9b86861e59b737297e6d50d.jpg"),
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
                      "https://i.pinimg.com/564x/71/0a/16/710a165994738690ff0c324eb26584c7.jpg"),
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
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
        const Center(
            child: Text(
          'Available Promotions',
          style: TextStyle(
              color: mycolor, fontWeight: FontWeight.bold, fontSize: 30),
        )),
        Image.network(
            'https://i.pinimg.com/564x/f6/27/9d/f6279d35e40cdbba40ce2276fd0c1c3f.jpg'),
        const Center(
          child: Text(
            'Score Points for Every Haircut',
            style: TextStyle(
                color: mycolor, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Image.network(
          'https://i.pinimg.com/564x/00/d9/b4/00d9b4403d49c0faa217b62c983d0aa0.jpg',
        ),
        const Center(
            child: Text(
          'Last Minute Appointments',
          style: TextStyle(
              color: mycolor, fontWeight: FontWeight.bold, fontSize: 30),
        )),
        Image.network(
          'https://i.pinimg.com/564x/c5/22/a3/c522a3447875367b5d47670bc362b9a3.jpg',
        ),
      ],
    );
  }
}
