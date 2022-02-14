import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'servicetitem.dart';
import 'booklogic.dart';

class DisplayProduct extends StatelessWidget {
  const DisplayProduct({
    Key? key,
    required this.serviceitem,
  }) : super(key: key);
  final ServiceItem serviceitem;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller2>(context, listen: false);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffFFF0EB),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 10,
              right: -40,
              child: Image.asset(
                serviceitem.service.url,
                width: MediaQuery.of(context).size.width * 0.60,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  serviceitem.service.title.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Text(
                //   '\$${serviceitem.service.price}',
                //   style: const TextStyle(
                //     fontWeight: FontWeight.w600,
                //     fontSize: 30,
                //   ),
                // ),
                // const SizedBox(
                //   height: 5,
                // ),
                Text(
                  '${serviceitem.service.duration} min',
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.attach_money,
                      size: 16,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${serviceitem.service.price}',
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
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 60,
            child: TextButton(
              onPressed: () {
                if (serviceitem.quantity > 1) {
                  controller.reduceqty(serviceitem);
                } else {
                  controller.removeProductFromCart(serviceitem);
                }
              },
              child: const Text(
                'Remove Booking',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
  




// Container(
//       margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height / 3,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: const Color(0xffFFF0EB),
//       ),
//       child: Stack(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(top: 40, left: 30),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   serviceitem.service.title.toString(),
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 30,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   serviceitem.service.price.toString(),
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: <Widget>[
//                     const Icon(
//                       Icons.attach_money,
//                       size: 16,
//                       color: Colors.green,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       serviceitem.service.price.toString(),
//                       style: TextStyle(
//                         color: Color(0xff4E295B),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
                
//               ],
//             ),
//           ),
          // Positioned(
          //   bottom: 40,
          //   left: 60,
          //   child: TextButton(
          //     onPressed: () {
          //       if (serviceitem.quantity > 1) {
          //         controller.reduceqty(serviceitem);
          //       } else {
          //         controller.removeProductFromCart(serviceitem);
          //       }
          //     },
          //     child: const Text(
          //       'Remove Booking',
          //       style: TextStyle(
          //         color: Colors.red,
          //       ),
          //     ),
//             ),
//           ),
          
//         ],
//       ),
//     );
//   }
// }
