import 'package:TheLook/Booking/stylistdisplayScreen.dart';
import 'package:TheLook/screens/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Booking/bookedscreen.dart';
import 'Booking/booklogic.dart';

import 'Modules/constants.dart';
import 'Rating/commentsection.dart';
import 'Sign_in/utils/authentication_client.dart';
import 'Sign_in/utils/firebase_options.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:provider/provider.dart';
import 'homescreen.dart';
import 'Modules/notifications.dart';
import 'saleProducts/cartlogic.dart';
import 'saleProducts/cartscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeController(),
        ),
        ChangeNotifierProvider(
          create: (context) => Controller2(),
        )
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TheLook',
      color: mycolor,
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final User user;
  const MyHomePage({Key? key, required this.title, required this.user})
      : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _authClient = AuthenticationClient();
  int selectedIndex = 0;
  // ignore: unused_field
  bool _isProgress = false;
  List<Widget> listWidgets = [
    const HomeScreen(),
    const Bookings(),
    const CartScreen(),
    const Notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //shape: ,
        backgroundColor: const Color.fromRGBO(11, 2, 28, 2),
        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      //backgroundColor: const Color(0xeff0dfe1),
      body: listWidgets[selectedIndex],
      bottomNavigationBar: ConvexAppBar.badge(
        {
          2: ' ${context.select((HomeController controller) => controller.totalCartItems)}'
        },
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.calendar_today, title: 'Booking'),
          TabItem(icon: Icons.shopping_cart, title: 'Cart'),
          TabItem(icon: Icons.notifications, title: 'Notifications'),
          //TabItem(icon: Icons.person, title: 'Profile'),
        ],
        onTap: onItemTapped,
        activeColor: mycolor,
        backgroundColor: const Color.fromRGBO(11, 2, 28, 2),
      ),
      drawer: Drawer(
        backgroundColor: mycolor,
        elevation: 20,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: cardColor2,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xeff0dfe1),
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/WhatsApp Image 2022-02-14 at 18.42.16.jpeg')
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.person, color: Colors.pink),
                title: Text(
                  '${widget.user.displayName}',
                  style: const TextStyle(
                    color: Colors.black,
                  
                  ),
                ),

                onTap: () {},
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.pink,
                ),
                title: Text(
                  widget.user.email.toString(),
                  style:
                      TextStyle(color: kTextColor, fontWeight: FontWeight.w300),
                ),
                onTap: () {},
                
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              elevation: 2,
              child: ListTile(
                leading: const Icon(
                  Icons.monetization_on,
                  color: Colors.green,
                ),
                title: Text(
                  ' \$ ${context.select((HomeController controller) => controller.totalPrice) + context.select((Controller2 controller) => controller.totalPrice)} ',
                    style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.green,
                  ),
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartScreen()),
                  );
                },

              
              ),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.radar, color: mycolor),
                title: const Text(
                  'Share your Experience',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Comments()),
                  );
                },

                //trailing: Text('Name'),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              elevation: 2,
              child: ListTile(
                leading: const Icon(
                  Icons.calendar_today,
                  color: mycolor,
                ),
                title: const Text(
                  'My Bookings',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.pink,
                  ),
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BookedScreen()),
                  );
                },

                // trailing: Text('Email'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  fixedSize: const Size(30, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () async {
                setState(() {
                  _isProgress = true;
                });
                await _authClient.logoutUser();
                setState(() {
                  _isProgress = false;
                });
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                  (route) => false,
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            const Center(
              child: Text(
                'Terms and conditions Apply',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
