import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


// ignore: must_be_immutable
class DetailedScreenWomen extends StatelessWidget {
  List b = [
    "https://media.istockphoto.com/photos/young-brown-haired-woman-is-touching-softly-owne-hair-hair-care-picture-id1170764333?k=20&m=1170764333&s=612x612&w=0&h=M4oJPWuIq304P3RQ3bLm6qzupJPQvi61RuRRNHyrWr4=",
    "https://media.istockphoto.com/photos/woman-at-hair-salon-picture-id1153438285?k=20&m=1153438285&s=612x612&w=0&h=0ijoofP_MxxA0qdGysG1SfcFcmPduEyqnIUMJhJtL-c=",
    "https://media.istockphoto.com/photos/hairdressers-hands-are-cutting-brown-short-hair-picture-id1186053045?k=20&m=1186053045&s=612x612&w=0&h=TpblmIvVYNRQOj8GcAQBVT6qiR2WNnmlh9HQZRUkmjY=",
    "https://media.istockphoto.com/photos/young-brown-haired-beautiful-model-with-long-curly-well-groomed-hair-picture-id1017212870?k=20&m=1017212870&s=612x612&w=0&h=Nm4v_6WIVf5QA_k5dTiP364HKFdPYrab441KhdlX_1U=",
    "https://media.istockphoto.com/photos/blonde-girl-with-elegant-and-shiny-hairstyle-picture-id923192914?k=20&m=923192914&s=612x612&w=0&h=pBuOF-Z-RlY3xDDCjelCMQuh2MsZg4r8gCEDSSaRMBs=",
    "https://media.istockphoto.com/photos/natural-afro-hair-wide-toothy-smile-and-expression-of-pleasure-on-the-picture-id1269161360?k=20&m=1269161360&s=612x612&w=0&h=R3CsnDcWsxqIDbisJWeObBb563ukZIIW7LwBkMO68yM=",
    "https://media.istockphoto.com/photos/young-brown-haired-beautiful-model-with-long-wavywell-groomed-curls-picture-id861732348?k=20&m=861732348&s=612x612&w=0&h=0PY6PmMidwATw2t4I41_Xiv3-Nyf5E8KihILTF9GOBA=",
    "https://media.istockphoto.com/photos/african-female-beauty-with-braided-hair-picture-id685878718?k=20&m=685878718&s=612x612&w=0&h=PTW0BjrmvoX121AjHbOmJ05ogSR0DKZ2Mjeq06aDciY=",
    "https://media.istockphoto.com/photos/my-curls-my-crown-picture-id1059157466?k=20&m=1059157466&s=612x612&w=0&h=86oxk9YT5sx0ri4KQLQMItsM6WRKK09Fw2PA6yF3ICI=",
    "https://media.istockphoto.com/photos/portrait-of-young-girl-with-blond-fashion-hairstyle-picture-id1080369442?k=20&m=1080369442&s=612x612&w=0&h=zgNsupLpeij6_1jskaYmbbAbi_Ah6K3y-aoh-70tqCk=",
  ];

  DetailedScreenWomen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor,
      appBar: AppBar(
        backgroundColor: mycolor,
        title: const Text("Women Styles"),
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
                    imageUrl: b[index],
                    fit: BoxFit.cover,
                  ),
                  //Image.network(b[index]),
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
        itemCount: b.length,
      ),
    );
  }
}
