import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/extensions/navigation_extension.dart';
import 'package:recast_designs/core/functions/spacer.dart';
import 'package:recast_designs/core/routing/router.dart';
import 'package:recast_designs/features/home/domain/models/food_menu.dart';
import 'package:recast_designs/features/home/presentation/widgets/food_menu_card.dart';

class FoodMenuCards extends StatelessWidget {
  const FoodMenuCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                onTap: () => context.pushNamed(
                  Routes.foodDetailsScreen,
                  arguments: FoodMenu.dummyData[0],
                ),
              ),
              verticalSpacer(12),
              FoodMenuCard(
                height: 170.h,
                imagePath: FoodMenu.dummyData[1].imagePath,
                title: FoodMenu.dummyData[1].title,
                price: FoodMenu.dummyData[1].price,
                onTap: () => context.pushNamed(
                  Routes.foodDetailsScreen,
                  arguments: FoodMenu.dummyData[1],
                ),
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
                onTap: () => context.pushNamed(
                  Routes.foodDetailsScreen,
                  arguments: FoodMenu.dummyData[2],
                ),
              ),
              verticalSpacer(12),
              FoodMenuCard(
                height: 160.h,
                imagePath: FoodMenu.dummyData[3].imagePath,
                title: FoodMenu.dummyData[3].title,
                price: FoodMenu.dummyData[3].price,
                onTap: () => context.pushNamed(
                  Routes.foodDetailsScreen,
                  arguments: FoodMenu.dummyData[3],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
