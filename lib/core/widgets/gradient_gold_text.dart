import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_colors.dart';

class GradientGoldText extends StatelessWidget {
  const GradientGoldText({super.key, required this.title, this.size});

  final String title;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [AppColors.gold, AppColors.lightGold],
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        title,
        style: TextStyle(
          fontSize: size ?? 26.sp,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.5.sp,
          height: 1.1.sp,
        ),
      ),
    );
  }
}
