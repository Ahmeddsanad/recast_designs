// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/functions/spacer.dart';
import 'package:recast_designs/core/widgets/gradient_gold_text.dart';
import 'package:recast_designs/features/food_details/presentation/widgets/preparation_container.dart';
import 'package:recast_designs/features/home/domain/models/food_menu.dart';

class FoodDetailsInfo extends StatelessWidget {
  const FoodDetailsInfo({super.key, required this.foodMenu});

  final FoodMenu foodMenu;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          foodMenu.category,
          style: TextStyle(
            color: AppColors.white.withOpacity(0.6),
            fontSize: 13.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5.sp,
            height: 1.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: GradientGoldText(title: foodMenu.title),
        ),
        verticalSpacer(6),
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: Text(
            foodMenu.description,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.5.sp,
              height: 1.3,
            ),
          ),
        ),
        verticalSpacer(14),
        Padding(
          padding: EdgeInsets.only(left: 4.0.w),
          child: Text(
            'Preparation',
            style: TextStyle(
              color: AppColors.white.withOpacity(0.6),
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5.sp,
              height: 1.0,
            ),
          ),
        ),
        verticalSpacer(10),
        Wrap(
          spacing: 6.w,
          runSpacing: 6.h,
          children: foodMenu.preparation
              .map((item) => PreparationContainer(text: item))
              .toList(),
        ),
      ],
    );
  }
}
