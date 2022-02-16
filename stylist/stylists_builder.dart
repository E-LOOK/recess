import 'package:flutter/material.dart';
import 'stylistsnames.dart';
import 'stylist_card.dart';
import '../Modules/section_title.dart';

class Stylists extends StatelessWidget {
  const Stylists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: SectionTitle(title: "Stylists", pressSeeAll: () {}),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Card(
            color: Colors.white54,
            elevation: 10,
            //shadowColor: cardColor1,
            margin: const EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: List.generate(
                  stylists.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: StylistCard(
                      name: stylists[index].name,
                      image: stylists[index].image,
                      bgColor: stylists[index].bgColor,
                      tel: stylists[index].tel,
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
