// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recast_designs/core/constants/app_assets.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/functions/spacer.dart';
import 'package:recast_designs/features/home/presentation/widgets/blurred_arrow_back.dart';
import 'package:recast_designs/features/home/presentation/widgets/faded_banner.dart';
import 'package:recast_designs/features/home/presentation/widgets/faded_banner_with_arrow_back.dart';
import 'package:recast_designs/features/home/presentation/widgets/small_subtitle_with_gradient_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                FadedBannerWithArrowBack(onArrowBackPressed: () {}),
                Positioned(
                  top: 60,
                  right: 14,
                  child: Image.asset(
                    AppAssets.avatar,
                    width: 48.w,
                    height: 48.h,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: SmallSubtitleWithGradientTitle(),
                ),
                verticalSpacer(4),
                Padding(
                  padding: EdgeInsets.only(right: 16.w, left: 16.w),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: AppColors.white.withOpacity(0.70),
                      height: 1.350,
                      letterSpacing: -0.5.sp,
                    ),
                  ),
                ),
                verticalSpacer(16),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    'Atmosphere',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.white.withOpacity(0.81),
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.5.sp,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
