import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Productitem.dart';
import 'cartlogic.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'imagedescription.dart';

class DisplayProduct extends StatelessWidget {
  const DisplayProduct({
    Key? key,
    required this.productitem,
  }) : super(key: key);
  final ProductItem productitem;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context, listen: false);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffFFF0EB),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5,
            right: -40,
            child: CachedNetworkImage(
              imageUrl: productitem.product.image,
              //fit:BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.60,
            ),
            // child: Image.network(
            //   productitem.product.image,
            //   width: MediaQuery.of(context).size.width * 0.60,
            // ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  productitem.product.title.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Text(
                //   productitem.product.id.toString(),
                //   style: const TextStyle(
                //     fontWeight: FontWeight.w300,
                //   ),
                // ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.attach_money,
                      size: 25,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      productitem.product.price.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                        color: Color(0xff4E295B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Desription(
                                  product: productitem.product,
                                )));
                  },
                  color: const Color(0xff4E295B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 60,
            child: IconButton(
              onPressed: () {
                if (productitem.quantity > 1) {
                  controller.reduceqty(productitem);
                } else {
                  controller.removeProductFromCart(productitem);
                }
              },
              icon: const Icon(Icons.remove_circle),
            ),
          ),
          Positioned(
            bottom: 40,
            child: IconButton(
              onPressed: () {
                controller.increaseqty(productitem);
              },
              icon: const Icon(Icons.add_circle),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 40,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: Text(productitem.quantity.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
// Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           height: 300,
//           width: 350,
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Colors.black,
//               width: 0.5,
//             ),
//             color: mycolor,
//             borderRadius: BorderRadius.circular(30),
//           ),
//           child: Stack(
//             children: [
//               Center(
//                 child: Image.network(productitem.product.image),
//               ),
//               IconButton(
//                 onPressed: () {
//                   if (productitem.quantity > 1) {
//                     controller.reduceqty(productitem);
//                   } else {
//                     controller.removeProductFromCart(productitem);
//                   }
//                 },
//                 icon: Icon(Icons.remove, color: mycolor),
//               ),
//               Positioned(
//                 bottom: 40,
//                 child: IconButton(
//                   onPressed: () {
//                     controller.increaseqty(productitem);
//                   },
//                   icon: Icon(Icons.add, color: mycolor),
//                 ),
//               ),
//               Positioned(
//                 right: 40,
//                 child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   radius: 15,
//                   child: Text(productitem.quantity.toString()),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Text(productitem.product.title.toString(),
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             )),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Flexible(
//               child: Text(productitem.product.id.toString(),
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: Colors.black,
//                   )),
//             ),
//             Divider(
//               indent: 30,
//             ),
//             Text(
//               '\$ ' + productitem.product.price.toString(),
//               style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.w200,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         )
//       ],
//     );