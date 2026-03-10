import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/widgets/gradient_gold_text.dart';

class SmallSubtitleWithGradientTitle extends StatelessWidget {
  const SmallSubtitleWithGradientTitle({super.key});

  final String subtitle = 'Lorem';
  final String title = 'CEANO';
  final double opacity = 0.8;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subtitle,
          style: TextStyle(
            color: AppColors.white.withOpacity(opacity),
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5.sp,
            height: 1.4,
          ),
        ),
        GradientGoldText(title: title),
      ],
    );
  }
}
