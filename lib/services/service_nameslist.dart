import 'package:TheLook/kids/detailedscreenkids.dart';
import 'package:TheLook/men/detailedmenScreen.dart';
import 'package:TheLook/women/detailedmanicure.dart';
import 'package:TheLook/women/detailedscreenwomen.dart';
import 'package:flutter/material.dart';



class Service {
  final String image, servicename;

  final Color bgColor;
  Widget pressed;
  Service({
    required this.image,
    required this.servicename,
    required this.pressed,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Service> services = [
  Service(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC37nGm8ZnaG_JSOpfstlnAI8b5jxmC8sqPQ&usqp=CAU',
    servicename: "Men's Cut",
    //price: 165,
    bgColor: const Color(0xFFFEFBF9),
    pressed: DetailedScreenMen()
  ),
  Service(
    image:
        "https://media.istockphoto.com/photos/hairdresser-putting-oil-on-braided-hair-of-her-client-in-salon-picture-id1350573897?k=20&m=1350573897&s=612x612&w=0&h=sn_jYQ00WAoyz7ALEth2h6URISr48s48VhJLnDLNNKM=",
    servicename: "Women",
    pressed:
      DetailedScreenWomen()
    
    //price: 99,
  ),
  Service(
    image:
        'https://media.istockphoto.com/photos/mom-weaves-african-braids-to-her-daughter-picture-id845955746?k=20&m=845955746&s=612x612&w=0&h=vVt7DVEboMVrKgPN_C77yGayUTpt4vgtWslhUni3E3s=',
    servicename: "Kids",
    // price: 180,
    bgColor: const Color(0xFFF8FEFB),
    pressed: 
      DetailedScreenKids()
    
  ),
  Service(
    image:
        'https://media.istockphoto.com/photos/woman-giving-her-client-a-manicure-in-salon-during-pandemic-picture-id1350573697?k=20&m=1350573697&s=612x612&w=0&h=O79mbxirk0ncZQQB5ZbiBx4FW5jSyyxXB11e6GiwBrA=',
    servicename: "Manicure & Pedicure",
    // price: 180,
    bgColor: const Color(0xFFF8FEFB),
    pressed: 
      ManicurePedicure()
    
  ),
];
