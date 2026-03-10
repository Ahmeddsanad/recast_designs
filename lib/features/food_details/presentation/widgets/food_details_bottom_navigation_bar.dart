// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recast_designs/core/constants/app_assets.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/widgets/gradient_gold_text.dart';
import 'package:recast_designs/features/food_details/presentation/manager/food_details_cubit.dart';
import 'package:recast_designs/features/food_details/presentation/manager/food_details_state.dart';

class FoodDetailsBottomNavigationBar extends StatelessWidget {
  const FoodDetailsBottomNavigationBar({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh * 0.13,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                GradientGoldText(title: '$price JD', size: 24.sp),
                Text(
                  '+ tax & service',
                  style: TextStyle(
                    color: AppColors.darkGray,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5.sp,
                    height: 0.7,
                  ),
                ),
              ],
            ),
            Spacer(),
            // Add To Order button
            BlocBuilder<FoodDetailsCubit, FoodDetailsState>(
              builder: (context, state) {
                final cubit = context.read<FoodDetailsCubit>();
                final pressed = state.buttonPressed;

                return GestureDetector(
                  onTapDown: (_) => cubit.onButtonDown(),
                  onTapUp: (_) => cubit.onButtonUp(),
                  onTapCancel: () => cubit.onButtonUp(),
                  onTap: cubit.addToOrder,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 120),
                    curve: Curves.easeInOut,
                    height: 52.h,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [AppColors.gold, AppColors.lightGold],
                      ),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 24.w, right: 12.w),
                          child: Text(
                            'Add To Order',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                              letterSpacing: -0.5.sp,
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 120),
                          curve: Curves.easeInOut,
                          width: 40.w,
                          height: 40.w,
                          margin: EdgeInsets.only(
                            right: pressed ? 10.w : 6.w,
                            left: pressed ? 4.w : 0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.black.withOpacity(
                              pressed ? 0.25 : 0.15,
                            ),
                            border: Border.all(
                              color: AppColors.black.withOpacity(0.1),
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              AppAssets.vectorRight,
                              width: 7.w,
                              colorFilter: const ColorFilter.mode(
                                AppColors.black,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
