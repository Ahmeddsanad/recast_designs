import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_colors.dart';

class TrendingContainer extends StatelessWidget {
  const TrendingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.white.withOpacity(0.4), width: 1),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.4),
            blurRadius: 2,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Text(
        'Trending',
        style: TextStyle(
          color: AppColors.white,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.5,
        ),
      ),
    );
  }
}
