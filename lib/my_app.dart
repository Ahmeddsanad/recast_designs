import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_designs/core/routing/app_router.dart';
import 'package:recast_designs/core/theme/app_theme.dart';
import 'package:recast_designs/features/home/presentation/views/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(375, 812),
        child: const HomeScreen(),
      ),
      theme: AppTheme.darkTheme,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
