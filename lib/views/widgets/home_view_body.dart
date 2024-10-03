import 'package:flutter/material.dart';

import 'package:flutter_web_task/views/widgets/item_card.dart';
import 'package:flutter_web_task/views/widgets/items_heading_row.dart';

import 'heading_widget.dart';
import 'items_list_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HeadingWidget(),
          SizedBox(
            height: 26,
          ),
          ItemHeadingRow(),
          SizedBox(
            height: 40,
          ),
          ItemsListWidget(),
          SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
