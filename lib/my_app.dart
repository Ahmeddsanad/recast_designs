import 'package:flutter/material.dart';
import 'package:recast_designs/core/theme/app_theme.dart';
import 'package:recast_designs/features/home/presentation/views/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: AppTheme.darkTheme,
    );
  }
}
