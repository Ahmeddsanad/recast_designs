// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_assets.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/functions/spacer.dart';
import 'package:recast_designs/core/widgets/faded_banner_with_arrow_back.dart';
import 'package:recast_designs/features/home/presentation/widgets/atmoshpere_content.dart';
import 'package:recast_designs/features/home/presentation/widgets/food_menu_cards.dart';
import 'package:recast_designs/features/home/presentation/widgets/small_subtitle_with_gradient_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // AnnotatedRegion used to make status and navigation bars white ( light )
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                  AtmosphereContent(),
                  verticalSpacer(16),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      'Food Menu',
                      style: TextStyle(
                        color: AppColors.white.withOpacity(0.81),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5.sp,
                        height: 1.4,
                      ),
                    ),
                  ),
                  verticalSpacer(16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: FoodMenuCards(),
                  ),
                  verticalSpacer(60),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
