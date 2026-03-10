import 'package:flutter/material.dart';
import 'package:recast_designs/features/home/presentation/widgets/blurred_arrow_back.dart';
import 'package:recast_designs/features/home/presentation/widgets/faded_banner.dart';

class FadedBannerWithArrowBack extends StatelessWidget {
  const FadedBannerWithArrowBack({super.key, this.onArrowBackPressed});

  final void Function()? onArrowBackPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadedBanner(),
        Positioned(
          top: 60,
          left: 14,
          child: BlurredArrowBack(onPressed: onArrowBackPressed),
        ),
      ],
    );
  }
}
