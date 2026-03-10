// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/constants/app_colors.dart';
import 'package:recast_designs/core/functions/spacer.dart';

class AddToOrderOverlay extends StatefulWidget {
  const AddToOrderOverlay({super.key, required this.onComplete});

  final VoidCallback onComplete;

  @override
  State<AddToOrderOverlay> createState() => _AddToOrderOverlayState();
}

class _AddToOrderOverlayState extends State<AddToOrderOverlay>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _iconController;
  late AnimationController _checkController;
  late AnimationController _textController;

  late Animation<double> _fadeAnim;
  late Animation<double> _iconScaleAnim;
  late Animation<double> _iconOffsetAnim;
  late Animation<double> _checkScaleAnim;
  late Animation<double> _textFadeAnim;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _iconController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _checkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _textController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _fadeAnim = CurvedAnimation(parent: _fadeController, curve: Curves.easeIn);

    _iconScaleAnim = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _iconController, curve: Curves.elasticOut),
    );
    _iconOffsetAnim = Tween<double>(
      begin: 60,
      end: 0,
    ).animate(CurvedAnimation(parent: _iconController, curve: Curves.easeOut));

    _checkScaleAnim = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _checkController, curve: Curves.elasticOut),
    );

    _textFadeAnim = CurvedAnimation(
      parent: _textController,
      curve: Curves.easeIn,
    );

    _runSequence();
  }

  Future<void> _runSequence() async {
    await _fadeController.forward();
    if (!mounted) return;
    await _iconController.forward();
    if (!mounted) return;
    await Future.delayed(const Duration(milliseconds: 200));
    if (!mounted) return;
    await _checkController.forward();
    if (!mounted) return;
    await Future.delayed(const Duration(milliseconds: 100));
    if (!mounted) return;
    await _textController.forward();
    if (!mounted) return;
    await Future.delayed(const Duration(milliseconds: 900));
    if (!mounted) return;
    await _fadeController.reverse();
    if (!mounted) return;
    widget.onComplete();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _iconController.dispose();
    _checkController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnim,
      child: Container(
        color: AppColors.black.withOpacity(0.85),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Cart icon flying up
              AnimatedBuilder(
                animation: _iconController,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, _iconOffsetAnim.value),
                    child: Transform.scale(
                      scale: _iconScaleAnim.value,
                      child: child,
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Gold circle background
                    Container(
                      width: 90.w,
                      height: 90.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [AppColors.gold, AppColors.lightGold],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: AppColors.black,
                      size: 40.sp,
                    ),
                  ],
                ),
              ),

              verticalSpacer(24),

              // Checkmark badge
              ScaleTransition(
                scale: _checkScaleAnim,
                child: Container(
                  width: 36.w,
                  height: 36.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Icon(Icons.check, color: Colors.white, size: 20.sp),
                ),
              ),

              verticalSpacer(20),

              // Success text
              FadeTransition(
                opacity: _textFadeAnim,
                child: Column(
                  children: [
                    Text(
                      'Added to Order!',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5,
                      ),
                    ),
                    verticalSpacer(6),
                    Text(
                      'Your item has been added successfully.',
                      style: TextStyle(
                        color: AppColors.white.withOpacity(0.6),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
