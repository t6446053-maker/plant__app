import 'package:flutter/material.dart';
import 'package:plt/widgets/PlantCard.dart';

class CoustomGrideView extends StatelessWidget {
  final List<Map<String, dynamic>> itemData;

  const CoustomGrideView({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    if (itemData.isEmpty) {
      return const Center(
        child: Text(
          "No items available",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: itemData.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        childAspectRatio: 0.72,
      ),
      itemBuilder: (context, index) {
        final item = itemData[index];

        return PlantCard(
          name: item["name"],
          image: item["image"],
          door: item["type"],
          price: item["price"],
        );
      },
    );
  }
}