import 'package:flutter/material.dart';

import 'package:flutter_web_task/views/widgets/items_main_section.dart';

import 'heading_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: Column(
          children: [
            HeadingWidget(
              constraints: constraints,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
            ),
            const ItemsMainSection(),
            SizedBox(
              height: constraints.maxHeight * 0.032,
            )
          ],
        ),
      ),
    );
  }
}
