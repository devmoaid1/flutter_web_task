import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_task/core/widgets/custom_divider.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/text_styles.dart';

class HeadingWidget extends StatelessWidget {
  final BoxConstraints constraints;

  const HeadingWidget({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    // Determine whether to show the OptionsRow based on passed constraints
    bool showOptionsRow =
        constraints.maxWidth > 800; // Example threshold for larger screens

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 18,
        top: 18,
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColors.gray))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: showOptionsRow
                  ? constraints.maxWidth * 0.08
                  : constraints.maxWidth * 0.02, // Dynamic size based on height
            ),
            if (!showOptionsRow)
              const Icon(
                Icons.menu,
                color: AppColors.white,
              ),
            if (!showOptionsRow)
              SizedBox(
                width: constraints.maxWidth * 0.02,
              ),
            if (!showOptionsRow)
              SizedBox(
                width: constraints.maxWidth *
                    0.012, // Dynamic size based on height
              ),
            SvgPicture.asset(AppAssets.logo),
            const Spacer(),
            Row(
              children: [
                // Only show OptionsRow if on desktop
                if (showOptionsRow) const OptionsRow(),
                if (showOptionsRow)
                  const CustomDivider(color: AppColors.dividerColorThin),
                if (!showOptionsRow) const SizedBox(height: 60),
                SizedBox(
                  width: constraints.maxWidth * 0.02,
                ),
                SvgPicture.asset(AppAssets.settings),
                SizedBox(
                  width: constraints.maxWidth * 0.02,
                ),
                SvgPicture.asset(AppAssets.notifications),
                SizedBox(
                  width: constraints.maxWidth * 0.02,
                ),

                const CustomDivider(color: AppColors.dividerColorThick),
                SizedBox(
                  width: constraints.maxHeight * 0.02,
                ),
                Image.asset(AppAssets.profile),
                SizedBox(
                  width: constraints.maxWidth * 0.012,
                ),
                if (showOptionsRow)
                  Text(
                    'John Doe',
                    style: AppTextStyles.bodyText14Normal
                        .copyWith(color: AppColors.white),
                  ),
                if (showOptionsRow) const SizedBox(width: 4),
                if (showOptionsRow)
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.white,
                  ),
                SizedBox(
                  width: showOptionsRow
                      ? constraints.maxWidth * 0.08
                      : constraints.maxWidth * 0.01,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OptionsRow extends StatelessWidget {
  const OptionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        NavigationItem(
          title: 'Items',
          isSelected: true,
        ), // Highlighted
        SizedBox(width: 20), // Space between items
        NavigationItem(
          title: 'Pricing',
        ),
        SizedBox(width: 20),
        NavigationItem(
          title: 'Info',
        ),
        SizedBox(width: 20),
        NavigationItem(
          title: 'Tasks',
        ),
        SizedBox(width: 20),
        NavigationItem(title: 'Analytics'),
        SizedBox(width: 20),
      ],
    );
  }
}

class NavigationItem extends StatelessWidget {
  final bool? isSelected;
  final String title;

  const NavigationItem({
    super.key,
    this.isSelected,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 27,
        ),
        Text(
          title,
          style: isSelected != null && isSelected == true
              ? AppTextStyles.bodyText14Medium
              : AppTextStyles.bodyText14Normal,
        ),
        const SizedBox(
          height: 27,
        ),
        isSelected != null && isSelected == true
            ? Container(
                height: 2,
                width: 40,
                color: AppColors.lightOrange,
              )
            : const SizedBox()
      ],
    );
  }
}
