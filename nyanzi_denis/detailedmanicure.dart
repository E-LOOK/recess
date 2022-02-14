import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


// ignore: must_be_immutable
class ManicurePedicure extends StatelessWidget {
  List d = [
    "https://images.unsplash.com/photo-1604654894610-df63bc536371?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVkaWN1cmUlMjBhbmQlMjBtYW5pY3VyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1619615787228-ce0fa8440e18?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVkaWN1cmUlMjBhbmQlMjBtYW5pY3VyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/photos/female-hands-and-feet-with-brown-nail-design-beige-nail-polish-and-picture-id1290698975?b=1&k=20&m=1290698975&s=170667a&w=0&h=C0_fstfWFc75JhmoW1d6arFzuORJOto0MQfJBYM-r5c=",
    "https://images.unsplash.com/photo-1585731601359-b5edfffbf629?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBlZGljdXJlJTIwYW5kJTIwbWFuaWN1cmV8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1588253293138-ed5da9c55b12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
    "https://images.unsplash.com/photo-1519014816548-bf5fe059798b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1607779097040-26e80aa78e66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/photos/beautiful-female-hand-apply-cream-on-her-foot-picture-id1290277610?b=1&k=20&m=1290277610&s=170667a&w=0&h=HPvnur62e0v8uGeq7_xtceN3Vfx7Ll8k5dSKCw5xz98=",
    "https://images.unsplash.com/photo-1632345031435-8727f6897d53?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/photos/womans-hand-removing-pink-nail-polish-with-white-cotton-pad-on-towel-picture-id1149813990?b=1&k=20&m=1149813990&s=170667a&w=0&h=v6X19CkrXzOSYnwsUthk5WRAUaS4fOsbJA4KqPfad6w=",
  ];

  ManicurePedicure({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor,
      appBar: AppBar(
        backgroundColor: mycolor,
        title: const Text("Manicure & Pedicure"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 20,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl: d[index],
                    fit: BoxFit.cover,
                  ),
                  //const SizedBox(height: 10,),
                  Text(
                    "Style Id :$index",
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: d.length,
      ),
    );
  }
}
