// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/widgets/faded_banner_with_arrow_back.dart';
import 'package:recast_designs/features/food_details/presentation/manager/food_details_cubit.dart';
import 'package:recast_designs/features/food_details/presentation/manager/food_details_state.dart';
import 'package:recast_designs/features/food_details/presentation/widgets/add_to_order_overlay.dart';
import 'package:recast_designs/features/food_details/presentation/widgets/food_details_bottom_navigation_bar.dart';
import 'package:recast_designs/features/food_details/presentation/widgets/food_details_info.dart';
import 'package:recast_designs/features/home/domain/models/food_menu.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key, required this.foodMenu});

  final FoodMenu foodMenu;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FoodDetailsCubit(),
      child: BlocBuilder<FoodDetailsCubit, FoodDetailsState>(
        builder: (context, state) {
          final cubit = context.read<FoodDetailsCubit>();
          final showOverlay = state is FoodDetailsShowOverlay;

          return Scaffold(
            backgroundColor: AppColors.black,
            bottomNavigationBar: FoodDetailsBottomNavigationBar(
              price: foodMenu.price,
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadedBannerWithArrowBack(
                        imagePath: foodMenu.imagePath,
                        onArrowBackPressed: () => Navigator.pop(context),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: FoodDetailsInfo(foodMenu: foodMenu),
                      ),
                    ],
                  ),
                ),
                // small animation overlay when Add To Order button is pressed
                if (showOverlay)
                  Positioned.fill(
                    child: AddToOrderOverlay(onComplete: cubit.overlayComplete),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
