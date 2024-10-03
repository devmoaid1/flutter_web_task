import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_task/core/widgets/custom_divider.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/text_styles.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageStack(),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Use a Flexible widget with a limited width
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 213),
                  child: Text(
                    "item Titleeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.bodyText18Normal
                        .copyWith(color: AppColors.white),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.calendar),
                    const SizedBox(width: 6),
                    // Use a Flexible widget with a limited width
                    Expanded(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 200),
                        child: Text(
                          "5 Nights (Jan 16 - Jan 20, 2024)",
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.bodyText12Normal
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const CustomDivider(
                  color: AppColors.dividerColorThin,
                  width: double.infinity,
                  height: 1,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          // Image Avatar
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(AppAssets.profile),
                              ),
                            ),
                          ),
                          // First Circle Border
                          Positioned(
                            left: 10,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.dividerColorThin),
                              ),
                            ),
                          ),
                          // Second Circle Border
                          Positioned(
                            left: 20,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.dividerColorThin),
                              ),
                            ),
                          ),
                          // +6 Count Circle
                          Positioned(
                            left: 30,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.dividerColorThin,
                              ),
                              child: Center(
                                child: Text(
                                  '+6',
                                  style:
                                      AppTextStyles.bodyText12Normal.copyWith(
                                    color: AppColors.lightOrange,
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    // Using Flexible for unfinished tasks text
                    const Text(
                      "4 unfinished tasks",
                      style: AppTextStyles.bodyText12Normal,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageStack extends StatelessWidget {
  const ImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 243,
          height: 180,
        ),
        Positioned(
          top: 8,
          right: 6,
          child: SvgPicture.asset(AppAssets.options),
        ),
        Positioned(
          bottom: 0,
          left: 15,
          child: Container(
            padding:
                const EdgeInsets.only(left: 12, top: 3, bottom: 3, right: 6),
            decoration: BoxDecoration(
                color: AppColors.orange.withOpacity(0.1),
                border: Border.all(color: AppColors.orange),
                borderRadius: BorderRadius.circular(100)),
            child: Row(
              children: [
                Text(
                  "Pending Approval",
                  style: AppTextStyles.bodyText14Normal
                      .copyWith(color: AppColors.white),
                ),
                const SizedBox(
                  width: 9,
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
