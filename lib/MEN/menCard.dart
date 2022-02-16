import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TrendsCard extends StatelessWidget {
  const TrendsCard({
    Key? key,
    required this.image,
    required this.name,
    required this.press,
    required this.price,

    //required this.bgColor,
  }) : super(key: key);
  final String image, name;
  final VoidCallback press;
  final int price;

  //final Color bgColor;

  @override
  Widget build(BuildContext context) {
    //final controller = Provider.of<HomeController>(context, listen: false);
    return GestureDetector(
      onTap: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => Desription(product: product)));
      },
      child: Container(
        width: 154,
        //padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.transparent,

          // borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                // border: Border.all(
                //   color: cardColor1,
                //   width: 1,
                // ),
                //color: cardColor1,
                borderRadius: BorderRadius.circular(2),
              ),
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              "\$" + price.toString(),
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
