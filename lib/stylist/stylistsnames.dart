import 'package:flutter/material.dart';

class Stylist {
  final String image, name,tel;
  void press() {}
  final Color bgColor;

  Stylist({
    required this.image,
    required this.name,
    required this.tel,
    
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Stylist> stylists = [
  Stylist(
    image:
        'https://media.istockphoto.com/photos/masseuse-working-at-a-spa-and-wearing-a-facemask-picture-id1225076200?k=20&m=1225076200&s=612x612&w=0&h=Q7lXzHFRLO5hKavhIZWkst1-suPNswaQ1jILuxqYAho=',
    name: "MACKLINE",
    bgColor: const Color(0xFFFEFBF9), tel: '03-82205-499',
  ),
  Stylist(
    image:
        "https://media.istockphoto.com/photos/portrait-of-a-successful-businesswoman-picture-id1265177923?k=20&m=1265177923&s=612x612&w=0&h=HV3ePx9LvbsimWgzyl_boT-VYHdU1Whjzh38-GpNr-M=",
    name: "JACQUE", tel: '04-77042-9423',
    //price: 99,
  ),
  Stylist(
    image:
        'https://media.istockphoto.com/photos/portrait-of-a-black-man-in-studio-picture-id1265217244?k=20&m=1265217244&s=612x612&w=0&h=ecDto2hu9XW348FfhcO6fF4O-gvy9HI7XjpOJZ4O6Hw=',
    name: "RICHARD",
    // price: 180,
    bgColor: const Color(0xFFF8FEFB), tel: '03-8180-363',
  ),
  Stylist(
    image:
        'https://media.istockphoto.com/photos/portrait-of-confident-man-in-black-turtleneck-picture-id1306305277?k=20&m=1306305277&s=612x612&w=0&h=YGHXh6l0W4Nvx5Yq9n4xQ9wWkqmVjgcdZswIRRO3iBQ=',
    name: "TONY",
    //price: 149,
    bgColor: const Color(0xFFEEEEED), tel: '04-6705-875',
  ),
];
