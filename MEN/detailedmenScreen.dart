import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


// ignore: must_be_immutable
class DetailedScreenMen extends StatelessWidget {
  List a = [
    "https://media.istockphoto.com/photos/man-getting-haircut-by-barber-in-vintage-barber-shop-picture-id1135396222?k=20&m=1135396222&s=612x612&w=0&h=Jo5XAA2x3maTtpStRhEqAaU10Siu_CRdi-1Lva6QEQo=",
    "https://media.istockphoto.com/photos/barber-shaves-the-beard-of-the-client-at-barbershop-picture-id1290346257?k=20&m=1290346257&s=612x612&w=0&h=cdZNJPmd9k9TyXeG6B_h4U0vKmdFDI4PbqQtCeSvJ_I=",
    "https://media.istockphoto.com/photos/rear-view-of-man-client-visiting-haidresser-in-barber-shop-picture-id1319587021?k=20&m=1319587021&s=612x612&w=0&h=J52SfzFGu5xPW6Y7c3WnWahrJ3hOyzzHYUS8l0rUMf4=",
    "https://media.istockphoto.com/photos/handsome-man-with-a-long-mustache-in-barbershop-picture-id513297262?k=20&m=513297262&s=612x612&w=0&h=WWCASBFhuetG1MLFy_YDlUHhzhqf837GIDw0eB18PuU=",
    "https://media.istockphoto.com/photos/beauty-shop-for-men-shaving-a-beard-in-a-barbershop-barber-cuts-his-picture-id1222668100?k=20&m=1222668100&s=612x612&w=0&h=d00AV9rVe9Z8TsA2Oo6wZuhU6aVUxjCgd_6v4EFT_QU=",
    "https://media.istockphoto.com/photos/man-getting-his-beard-trimmed-with-electric-razor-picture-id872361244?k=20&m=872361244&s=612x612&w=0&h=xacxRAgqgXGCN4BAp3dSPZq_jK_irb24I6nZM2P6mNU=",
    "https://media.istockphoto.com/photos/selective-focus-of-barber-making-beard-haircut-with-scissors-picture-id1298253844?k=20&m=1298253844&s=612x612&w=0&h=cu0mqqpg9ebGga9xQjKs8gd8eeelTn32Ap4ZaKMIBkQ=",
    "https://media.istockphoto.com/photos/barber-master-cutting-client-beard-using-scissor-picture-id1132790452?k=20&m=1132790452&s=612x612&w=0&h=AD123h1dPVnA7d6inwlUCog__AIeO3RYgSaZGGL3AO8=",
    "https://media.istockphoto.com/photos/grayhaired-man-has-a-haircut-at-a-hairdresser-in-a-barbershop-picture-id1310158254?k=20&m=1310158254&s=612x612&w=0&h=mF94QVjH3sSkzmgOajVN2abOxMa9JinSc1mRK2pkfb0=",
    "https://media.istockphoto.com/photos/male-haircut-with-electric-razor-barber-makes-haircut-for-client-at-picture-id1163740230?k=20&m=1163740230&s=612x612&w=0&h=4WELyo_H38hhSEoFT4FxLIrZ_3pbkYKJDS45aCI74Ns=",
  ];

  DetailedScreenMen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor,
      appBar: AppBar(
        backgroundColor: mycolor,
        title: const Text("Men's Styles"),
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
                    imageUrl: a[index],
                    fit: BoxFit.cover,
                  ),
                  //Image.network(a[index]),
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
        itemCount: a.length,
      ),
    );
  }
}
