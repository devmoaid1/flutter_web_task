import 'package:flutter/material.dart';

import '../../core/theme/text_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "This is Home Screen",
        style: AppTextStyles.headingWhite32,
      ),
    );
  }
}
