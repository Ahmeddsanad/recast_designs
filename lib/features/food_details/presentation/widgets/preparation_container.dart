// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_colors.dart';

class PreparationContainer extends StatelessWidget {
  const PreparationContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.white.withOpacity(0.18.w),
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 13.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5.sp,
            height: 1.0,
          ),
        ),
      ),
    );
  }
}
