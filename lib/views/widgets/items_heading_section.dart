import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_task/core/constants/app_assets.dart';
import 'package:flutter_web_task/core/theme/app_colors.dart';
import 'package:flutter_web_task/core/theme/text_styles.dart';
import 'package:flutter_web_task/core/util/devices_enum.dart';
import 'package:flutter_web_task/core/util/responsive_helper.dart';

import '../../core/widgets/custom_divider.dart';

class ItemHeadingSection extends StatelessWidget {
  const ItemHeadingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final device = ResponsiveHelper.getDevice(context);

    final isMobileOrTablet = device == Device.mobile || device == Device.tablet;

    return Row(
      children: [
        const Text(
          "Items",
          style: AppTextStyles.headingWhite32,
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: AppColors.darkGray,
          radius: 24,
          child: SvgPicture.asset(AppAssets.filter),
        ),
        if (!isMobileOrTablet)
          const SizedBox(
            width: 14,
          ),
        if (!isMobileOrTablet)
          const CustomDivider(
            color: AppColors.dividerColorThick,
            height: 48,
            width: 1,
          ),
        if (!isMobileOrTablet)
          const SizedBox(
            width: 14,
          ),
        if (!isMobileOrTablet)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            decoration: BoxDecoration(
              color: AppColors.lightOrange,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.add,
                  color: AppColors.black,
                ),
                const SizedBox(
                  width: 9,
                ),
                Text(
                  "Add New item",
                  style: AppTextStyles.bodyText14Medium
                      .copyWith(color: AppColors.black),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
