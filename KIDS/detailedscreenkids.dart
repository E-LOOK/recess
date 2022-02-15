import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class DetailedScreenKids extends StatelessWidget {
  List c = [
    "https://media.istockphoto.com/photos/portrait-picture-id525799932?k=20&m=525799932&s=612x612&w=0&h=eeaTW1wpwTb6m8Diuv_CvoY87Qo9ht_CCXKzDe5maFI=",
    "https://media.istockphoto.com/photos/happy-smiling-africanamerican-child-girl-yellow-background-picture-id1168369629?k=20&m=1168369629&s=612x612&w=0&h=cOqiMS2ibSZPXOTy6OkRZrGJRUNmIKkv89iVO4TjW3M=",
    "https://media.istockphoto.com/photos/happy-kid-getting-haircut-at-hairdressers-picture-id943012082?k=20&m=943012082&s=612x612&w=0&h=wT-EwlEx9a_cqHYctSrXtUnuEYjrAmH7Ba_OeNJe8X8=",
    "https://media.istockphoto.com/photos/adorable-african-boy-on-studio-gray-background-picture-id850993288?k=20&m=850993288&s=612x612&w=0&h=GU47U7fVizV3PDnbOzMdP029CcWlwR5a8roW7g8v0S8=",
    "https://media.istockphoto.com/photos/cutting-bangs-picture-id171334633?k=20&m=171334633&s=612x612&w=0&h=-s6ILU_gPw4K5aP8NckJ_Rsg2etGu_BEIjsCbt7m4E4=",
    "https://media.istockphoto.com/photos/wow-look-advertise-here-portrait-of-amazed-cute-little-boy-with-curly-picture-id1201545332?k=20&m=1201545332&s=612x612&w=0&h=ofUc1ML8RgtgVhAtWp4a0tp3bpSYGo9Sp2ZxHn4LUX4=",
    "https://media.istockphoto.com/photos/african-kid-running-on-the-beach-while-playing-with-wood-toy-airplane-picture-id1263565562?k=20&m=1263565562&s=612x612&w=0&h=J2jzYkD-hkQruUKuzfoMne4ieo6CIm2ojizUSZE9MqE=",
    "https://media.istockphoto.com/photos/happy-child-little-girl-reading-a-book-picture-id1154573247?k=20&m=1154573247&s=612x612&w=0&h=C2AjhHswnAidDiQ3VYpqziZ0ytA2Ru7R8r_axP8jbsQ=",
    "https://media.istockphoto.com/photos/mother-is-making-of-braids-on-little-daughters-head-picture-id596773198?k=20&m=596773198&s=612x612&w=0&h=K96wrCVKlJw6Rw_4VtQzgr2qHtMcfOXE_JU7naaM0d4=",
    "https://media.istockphoto.com/photos/cute-trendy-child-looking-at-camera-picture-id1152823433?k=20&m=1152823433&s=612x612&w=0&h=8VQ-h0GfS-QOG7WmqoYPVU25sBXMNVpX5U08hRY6A_M=",
  ];

  DetailedScreenKids({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mycolor,
        title: const Text("Kid's Styles"),
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
                    imageUrl: c[index],
                    fit: BoxFit.cover,
                  ),
                  // Image.network(c[index]),
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
        itemCount: c.length,
      ),
    );
  }
}
