// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/features/home/presentation/widgets/food_menu_card/food_menu_background_image.dart';
import 'package:recast_designs/features/home/presentation/widgets/food_menu_card/food_menu_title_with_price.dart';
import 'package:recast_designs/features/home/presentation/widgets/food_menu_card/trending_container.dart';

class FoodMenuCard extends StatelessWidget {
  final double height;
  final String imagePath;
  final String title;
  final String price;
  final bool isTrending;

  const FoodMenuCard({
    super.key,
    required this.height,
    required this.imagePath,
    required this.title,
    required this.price,
    this.isTrending = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FoodMenuBackgroundImage(imagePath: imagePath, height: height),
          Positioned(
            bottom: 8.h,
            left: 8.w,
            right: 4.w,
            child: FoodMenuCardTitleWithPrice(title: title, price: price),
          ),
          if (isTrending)
            Positioned(top: 6.h, left: 6.w, child: TrendingContainer()),
        ],
      ),
    );
  }
}
