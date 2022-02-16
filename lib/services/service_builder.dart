import 'package:flutter/material.dart';
import 'service_nameslist.dart';
import 'service_card.dart';
import '../Modules/section_title.dart';

class Services extends StatelessWidget {
  const Services({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: SectionTitle(
            title: "Services",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: List.generate(
                services.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: ServiceCard(
                    name: services[index].servicename,
                    image: services[index].image,
                    bgColor: services[index].bgColor,
                    pressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => services[index].pressed,
                      ),
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
