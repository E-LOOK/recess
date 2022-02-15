import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.image,
    required this.name,
    required this.pressed,
    required this.bgColor,
  }) : super(key: key);
  final String image, name;
  final VoidCallback pressed;

  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        width: 154,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: Image.network(image).image,
                  radius: 40,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(name,
                        style: const TextStyle(
                          color: Color.fromRGBO(11, 2, 28, 2),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
