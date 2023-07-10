import 'package:flutter/material.dart';
import 'package:test_flutter/class/item_class.dart';
import 'package:test_flutter/core/constants.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.cardContent,
  });

  final ItemClass cardContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // if want to hide the arrow left or leading
        // automaticallyImplyLeading: false,
        title: Text(cardContent.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(cardContent.imagePath),
              FittedBox(
                child: Text(
                  cardContent.title,
                  style: const TextStyle(
                    fontSize: 200,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                detailDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kDouble10),
              const Text(
                detailDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
