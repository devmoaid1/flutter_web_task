import 'package:flutter/material.dart';
import 'package:flutter_web_task/core/util/responsive_helper.dart';

import '../../core/util/devices_enum.dart';
import 'items_heading_section.dart';
import 'items_list_widget.dart';

class ItemsMainSection extends StatelessWidget {
  const ItemsMainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              ResponsiveHelper.getDevice(context) == Device.mobile ? 22 : 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ItemHeadingSection(),
          SizedBox(
            height: ResponsiveHelper.screenHeight(context) * 0.04,
          ),
          const ItemsListSection(),
        ],
      ),
    );
  }
}
