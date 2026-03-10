import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/functions/spacer.dart';

class FoodMenuCardTitleWithPrice extends StatelessWidget {
  const FoodMenuCardTitleWithPrice({
    super.key,
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              height: 1,
              letterSpacing: -0.5.sp,
            ),
          ),
        ),
        horizontalSpacer(8),
        Container(
          width: 46.w,
          height: 46.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.white.withOpacity(0.25),
              width: 0.5,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.4),
                blurRadius: 2,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            '$price\nJOD',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.5.sp,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }
}
