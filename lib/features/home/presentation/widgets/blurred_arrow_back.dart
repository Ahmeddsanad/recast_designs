import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recast_designs/core/constants/app_assets.dart';
import 'package:recast_designs/core/constants/app_colors.dart';

class BlurredArrowBack extends StatelessWidget {
  const BlurredArrowBack({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(25.r),
        border: Border.all(color: AppColors.black.withOpacity(0.4), width: 1.w),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: IconButton(
        icon: SvgPicture.asset(AppAssets.arrowBack, width: 22.w),
        onPressed: onPressed,
      ),
    );
  }
}
