import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_task/core/widgets/custom_divider.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/text_styles.dart';

class ItemCard extends StatelessWidget {
  final bool isLongTitle;
  final BoxConstraints constraints;

  const ItemCard(
      {super.key, required this.constraints, required this.isLongTitle});

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
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 140), // Space for image or other content

                    // Responsive Pending Approval Badge
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 16), // Adjust margin as needed
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 3),
                      decoration: BoxDecoration(
                        color: AppColors.orange.withOpacity(0.1),
                        border: Border.all(color: AppColors.orange),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              "Pending Approval",
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.bodyText14Normal
                                  .copyWith(color: AppColors.white),
                            ),
                          ),
                          const SizedBox(width: 9),
                          const Icon(Icons.keyboard_arrow_down,
                              color: AppColors.white),
                        ],
                      ),
                    ),

                    // Item Title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            !isLongTitle
                                ? "item"
                                : "Long item title highlighting",
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.bodyText18Normal
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // Date Row
                    Row(
                      children: [
                        SvgPicture.asset(AppAssets.calendar),
                        const SizedBox(width: 6),
                        const Expanded(
                          child: Text(
                            "5 Nights (Jan 16 - Jan 20, 2024)",
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.bodyText12Normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const CustomDivider(
                        color: AppColors.dividerColorThin,
                        width: double.infinity,
                        height: 1),
                    const SizedBox(height: 12),

                    // Avatar Stack
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              // Avatar Image
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
                              // Circle Borders and Count
                              Positioned(
                                left: 10,
                                child: _buildCircleBorder(),
                              ),
                              Positioned(
                                left: 20,
                                child: _buildCircleBorder(),
                              ),
                              Positioned(
                                left: 30,
                                child: _buildCountCircle(),
                              ),
                            ],
                          ),
                        ),

                        // Unfinished Tasks Text
                        const Flexible(
                          child: Text(
                            "4 unfinished tasks",
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.bodyText12Normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Options Icon
              Positioned(
                top: 8,
                right: 6,
                child: SvgPicture.asset(AppAssets.options),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build circle borders
  Widget _buildCircleBorder() {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.white,
        border: Border.all(color: AppColors.dividerColorThin),
      ),
    );
  }

  // Helper method to build the count circle
  Widget _buildCountCircle() {
    return Container(
      width: 24,
      height: 24,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.dividerColorThin,
      ),
      child: Center(
        child: Text(
          '+6',
          style: AppTextStyles.bodyText12Normal.copyWith(
            color: AppColors.lightOrange,
            fontSize: 8,
          ),
        ),
      ),
    );
  }
}
