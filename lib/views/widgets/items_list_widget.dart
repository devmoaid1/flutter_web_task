import 'package:flutter/material.dart';

import 'item_card.dart';

class ItemsListSection extends StatelessWidget {
  const ItemsListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Define the number of columns based on the available width
        int crossAxisCount;

        if (constraints.maxWidth > 1200) {
          crossAxisCount = 5; // Large screens (desktop)
        } else if (constraints.maxWidth > 800) {
          crossAxisCount = 4; // Medium screens (tablet)
        } else if (constraints.maxWidth > 600) {
          crossAxisCount = 3; // Small tablets or large phones
        } else if (constraints.maxWidth > 450) {
          crossAxisCount = 2; // Small phones
        } else {
          crossAxisCount = 1;
        }

        return GridView.builder(
          padding: EdgeInsets.symmetric(
              horizontal: crossAxisCount == 1
                  ? constraints.maxWidth * 0.022
                  : constraints.maxWidth * 0.08),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 16,
            mainAxisSpacing: 10,
            crossAxisCount: crossAxisCount,
            mainAxisExtent: 322, // Adjust item height
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ItemCard(
              constraints: constraints,
            ); // Your item widget
          },
        );
      },
    );
  }
}
