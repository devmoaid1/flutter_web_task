import 'package:flutter/material.dart';

import 'item_card.dart';

class ItemsListWidget extends StatelessWidget {
  const ItemsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 16,
          mainAxisSpacing: 10,
          crossAxisCount: 5,
          mainAxisExtent: 322),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const ItemCard();
      },
    );
  }
}
