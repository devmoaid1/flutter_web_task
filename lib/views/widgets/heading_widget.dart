import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_task/core/widgets/custom_divider.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/text_styles.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(
              width: 80,
            ),
            SvgPicture.asset(AppAssets.logo),
            const Spacer(),
            Row(
              children: [
                const OptionsRow(),
                const CustomDivider(color: AppColors.dividerColorThin),
                const SizedBox(width: 20),
                SvgPicture.asset(AppAssets.settings),
                const SizedBox(width: 20),
                SvgPicture.asset(AppAssets.notifications),
                const SizedBox(width: 20),
                const CustomDivider(color: AppColors.dividerColorThick),
                const SizedBox(width: 20),
                Image.asset(AppAssets.profile),
                const SizedBox(width: 20),
                Text('John Doe',
                    style: AppTextStyles.bodyText14Normal
                        .copyWith(color: AppColors.white)),
                const SizedBox(width: 12),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.white,
                ),
                const SizedBox(
                  width: 80,
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
        Text(title,
            style: isSelected != null && isSelected == true
                ? AppTextStyles.bodyText14Medium
                : AppTextStyles.bodyText14Normal),
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
