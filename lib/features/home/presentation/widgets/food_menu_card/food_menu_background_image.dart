// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';

class FoodMenuBackgroundImage extends StatelessWidget {
  const FoodMenuBackgroundImage({
    super.key,
    required this.imagePath,
    required this.height,
  });

  final String imagePath;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(imagePath, fit: BoxFit.cover),
        // Layer 1 — top strip (weakest blur)
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: height * 0.31,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(color: Colors.transparent),
            ),
          ),
        ),
        // Layer 2 — middle strip (medium blur)
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: height * 0.24,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
              child: Container(color: Colors.transparent),
            ),
          ),
        ),
        // Layer 3 — bottom strip (strongest blur)
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: height * 0.17,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(color: Colors.transparent),
            ),
          ),
        ),
        // Dark gradient overlay
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: height * 0.45,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.35],
                colors: [
                  const Color(0xFF111111).withOpacity(0.0),
                  const Color(0xFF111111).withOpacity(0.15),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
