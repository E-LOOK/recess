// import 'package:flutter/material.dart';
// import 'package:indianyoutubefirebase/Modules/constants.dart';

// import 'commentsection.dart';
// import 'rating.dart';

// class RatingScreen extends StatelessWidget {
//   const RatingScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: mycolor,
//       appBar: AppBar(
//         backgroundColor: mycolor,
//         title: const Text('Rating'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Card(
//             color: const Color.fromRGBO(9, 229, 235, 1).withOpacity(0.5),
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ListTile(
//                   title: const Rate(),
//                   subtitle: const Text('Leave a comment'),
//                   leading: const CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage(
//                       'assets/lady1 NB.png',
//                     ),
//                   ),
//                   trailing: IconButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const Comments()));
//                       },
//                       icon: const Icon(Icons.comment))),
//             ),
//           ),
//           //const SizedBox(height: 5),
//           Card(
//             color: const Color.fromRGBO(9, 229, 235, 1).withOpacity(0.5),
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ListTile(
//                   title: const Rate(),
//                   subtitle: const Text('Leave a comment below'),
//                   leading: const CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage(
//                         'assets/maNB.png'),
//                   ),
//                   trailing: IconButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const Comments()));
//                       },
//                       icon: const Icon(Icons.comment))),
//             ),
//           ),
//           //const SizedBox(height: 5),
//           Card(
//             color: const Color.fromRGBO(9, 229, 235, 1).withOpacity(0.5),
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ListTile(
//                 title: const Rate(),
//                 subtitle: const Text('Leave a comment '),
//                 leading: const CircleAvatar(
//                   radius: 40,
//                   backgroundImage: AssetImage(
//                       'assets/lady2NB.png'),
//                 ),
//                 trailing: IconButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Comments()));
//                     },
//                     icon: const Icon(Icons.comment)),
//               ),
//             ),
//           ),
//           // const SizedBox(height: 5),
//           Card(
//             color: const Color.fromRGBO(9, 229, 235, 1).withOpacity(0.5),
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ListTile(
//                   title: const Rate(),
//                   subtitle: const Text('Leave a comment below'),
//                   leading: const CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage(
//                         'assets/man2NB.png'),
//                   ),
//                   trailing: IconButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Comments()));
//                     },
//                     icon: const Icon(Icons.comment),
//                   )),
//             ),
//           ),
//           // const SizedBox(height: 5),
//           // Card(
//           //   color: const Color.fromRGBO(9, 229, 235, 1),
//           //   elevation: 10,
//           //   shape: RoundedRectangleBorder(
//           //     borderRadius: BorderRadius.circular(20),
//           //   ),
//           //   child: const Padding(
//           //     padding: EdgeInsets.all(8.0),
//           //     child: ListTile(
//           //       title: Rate(),
//           //       subtitle: Text('James'),
//           //       leading: CircleAvatar(
//           //         radius: 50,
//           //         backgroundImage: NetworkImage(image),
//           //       ),
//           //     ),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
