import 'package:flutter/material.dart';
import 'package:recast_designs/core/constants/app_assets.dart';
import 'package:recast_designs/features/home/presentation/widgets/blurred_arrow_back.dart';
import 'package:recast_designs/core/widgets/faded_banner.dart';

class FadedBannerWithArrowBack extends StatelessWidget {
  const FadedBannerWithArrowBack({
    super.key,
    this.onArrowBackPressed,
    this.imagePath,
  });

  final void Function()? onArrowBackPressed;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadedBanner(imagePath: imagePath ?? AppAssets.homeBanner),
        Positioned(
          top: 60,
          left: 14,
          child: BlurredArrowBack(onPressed: onArrowBackPressed),
        ),
      ],
    );
  }
}
