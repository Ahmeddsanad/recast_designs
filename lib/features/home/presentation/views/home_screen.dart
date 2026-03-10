// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_assets.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/functions/spacer.dart';
import 'package:recast_designs/features/home/domain/models/food_menu.dart';
import 'package:recast_designs/features/home/presentation/widgets/faded_banner_with_arrow_back.dart';
import 'package:recast_designs/features/home/presentation/widgets/food_menu_card.dart';
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
                verticalSpacer(16),
                Padding(
                  padding: EdgeInsets.only(left: 11.w),
                  child: SizedBox(
                    height: 320.h,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 6,
                      separatorBuilder: (context, index) =>
                          horizontalSpacer(10),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(AppAssets.atmosphere1),
                        );
                      },
                    ),
                  ),
                ),
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
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            FoodMenuCard(
                              height: 120.h,
                              imagePath: FoodMenu.dummyData[0].imagePath,
                              title: FoodMenu.dummyData[0].title,
                              price: FoodMenu.dummyData[0].price,
                              isTrending: FoodMenu.dummyData[0].isTrending,
                            ),
                            verticalSpacer(12),
                            FoodMenuCard(
                              height: 170.h,
                              imagePath: FoodMenu.dummyData[1].imagePath,
                              title: FoodMenu.dummyData[1].title,
                              price: FoodMenu.dummyData[1].price,
                            ),
                          ],
                        ),
                      ),
                      horizontalSpacer(12),
                      Expanded(
                        child: Column(
                          children: [
                            FoodMenuCard(
                              height: 160.h,
                              imagePath: FoodMenu.dummyData[2].imagePath,
                              title: FoodMenu.dummyData[2].title,
                              price: FoodMenu.dummyData[2].price,
                            ),
                            verticalSpacer(12),
                            FoodMenuCard(
                              height: 160.h,
                              imagePath: FoodMenu.dummyData[3].imagePath,
                              title: FoodMenu.dummyData[3].title,
                              price: FoodMenu.dummyData[3].price,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpacer(60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
