import 'package:TheLook/Rating/rating.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StylistCard extends StatelessWidget {
  const StylistCard({
    Key? key,
    required this.image,
    required this.name,
    required this.tel,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, name, tel;
  final VoidCallback press;

  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        //padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.transparent,

          // borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    // border: Border.all(
                    //   width: 1,
                    //   color: Colors.black,
                    // ),
                  ),
                  child: CachedNetworkImage(
              imageUrl: image,
              fit:BoxFit.cover,
              ),
                )
              ],
            ),
            const SizedBox(height: 20 / 2),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(color: Colors.black),
                      ),
                      const Rate(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 15,
                          ),
                          Text(
                            tel,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //const SizedBox(width: 20 / 4),
              ],
            )
          ],
        ),
      ),
    );
  }
}
// Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 //make container boundaries as circle
//                 shape: BoxShape.rectangle,
//                 border: Border.all(
//               color: Colors.grey,
//               width: 1,
//             ),
//                 color: bgColor,
//                 borderRadius: const BorderRadius.all(Radius.circular(80)),
//               ),
