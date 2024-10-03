import 'package:flutter/widgets.dart';

class CustomDivider extends StatelessWidget {
  final double? height;
  final double? width;
  final Color color;

  const CustomDivider(
      {super.key, this.height, this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 2,
      height: height ?? 22,
      color: color,
    );
  }
}
