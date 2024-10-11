import 'package:flutter/material.dart';
import 'package:flutter_web_task/core/util/responsive_helper.dart';

import '../../core/util/devices_enum.dart';
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

        if (ResponsiveHelper.getDevice(context) == Device.desktop) {
          crossAxisCount = 5; // Large screens (desktop)
        } else if (ResponsiveHelper.getDevice(context) == Device.tablet) {
          crossAxisCount = 3; // Medium screens (tablet)
        } else {
          crossAxisCount = 1;
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 16,
            mainAxisSpacing: 10,
            crossAxisCount: crossAxisCount,
            mainAxisExtent: 314, // Adjust item height
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            bool isLongText = index == 1;
            return ItemCard(
              isLongTitle: isLongText,
            ); // Your item widget
          },
        );
      },
    );
  }
}
