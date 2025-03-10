import 'package:flutter/material.dart';
import 'package:food_fonix/core/app_colors.dart';
class IndicatorDot extends StatelessWidget {
  final bool isActive;
  const IndicatorDot({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 16 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? AppColors.pinkColor : AppColors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
