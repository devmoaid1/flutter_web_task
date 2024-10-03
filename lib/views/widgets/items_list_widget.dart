import 'package:flutter/material.dart';

import 'item_card.dart';

class ItemsListWidget extends StatelessWidget {
  const ItemsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 16,
            mainAxisSpacing: 10,
            crossAxisCount:
                constraints.maxWidth > 600 && constraints.maxWidth <= 1200
                    ? 3
                    : 5,
            mainAxisExtent: 322),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const ItemCard();
        },
      ),
    );
  }
}
