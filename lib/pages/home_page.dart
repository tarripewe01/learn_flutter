import 'package:flutter/material.dart';
import 'package:test_flutter/class/item_class.dart';
import 'package:test_flutter/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              cardContent: ItemClass(
                title: 'Rocket',
                imagePath: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    cardContent: ItemClass(
                      title: 'Space',
                      imagePath: 'images/space.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    cardContent: ItemClass(
                      title: 'Travel',
                      imagePath: 'images/travel.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              cardContent: ItemClass(
                title: 'Success',
                imagePath: 'images/yeah.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
