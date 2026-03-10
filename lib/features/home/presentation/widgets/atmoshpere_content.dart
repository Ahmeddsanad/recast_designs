import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_assets.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/functions/spacer.dart';

class AtmosphereContent extends StatelessWidget {
  const AtmosphereContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          padding: EdgeInsets.only(left: 10.w),
          child: SizedBox(
            height: 320.h,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              separatorBuilder: (context, index) => horizontalSpacer(10),
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
      ],
    );
  }
}
