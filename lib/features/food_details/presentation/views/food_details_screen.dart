// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:recast_designs/core/constants/app_assets.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/features/home/presentation/widgets/faded_banner_with_arrow_back.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key});

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
                FadedBannerWithArrowBack(
                  imagePath: AppAssets.itemBanner,
                  onArrowBackPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ],
            ),
          ],
        ),
      ),
    );
  }
}
