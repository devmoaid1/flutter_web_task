import 'package:flutter/material.dart';
import 'package:flutter_web_task/core/theme/app_colors.dart';

class AppTextStyles {
  static const TextStyle headingWhite32 = TextStyle(
      fontFamily: 'Inter',
      fontSize: 32, // Size for Header 1
      fontWeight: FontWeight.normal,
      color: AppColors.white);

  static const TextStyle h2 = TextStyle(
      fontFamily: 'Inter',
      fontSize: 26, // Size for Header 2
      fontWeight: FontWeight.normal,
      color: AppColors.white);

  static const TextStyle headingWhite22Normal = TextStyle(
      fontFamily: 'Inter',
      fontSize: 22, // Size for Header 3
      fontWeight: FontWeight.w500,
      color: AppColors.white);
  static const TextStyle bodyText18Normal = TextStyle(
      fontFamily: 'Inter',
      fontSize: 18, // Size for Body Text 1
      fontWeight: FontWeight.normal,
      color: AppColors.gray);
  static const TextStyle bodyText14Medium = TextStyle(
      fontFamily: 'Inter',
      fontSize: 14, // Size for Body Text 2
      fontWeight: FontWeight.w500,
      color: AppColors.white);
  static const TextStyle bodyText14Normal = TextStyle(
      fontFamily: 'Inter',
      fontSize: 14, // Size for Body Text 2
      fontWeight: FontWeight.normal,
      color: AppColors.gray);
  static const TextStyle bodyText12Normal = TextStyle(
      fontFamily: 'Inter',
      fontSize: 12, // Size for Body Text 2
      fontWeight: FontWeight.normal,
      color: AppColors.gray);
}
