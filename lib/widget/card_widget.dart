import 'package:flutter/material.dart';
import 'package:test_flutter/class/item_class.dart';
import 'package:test_flutter/core/constants.dart';
import 'package:test_flutter/pages/detail_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.cardContent,
  });

  final ItemClass cardContent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DetailPage();
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: kDouble10,
              ),
              Image.asset(cardContent.imagePath),
              Text(
                cardContent.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('This is the description of the ${cardContent.title}'),
              const SizedBox(
                height: kDouble10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
