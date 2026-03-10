import 'package:flutter/material.dart';
import 'package:recast_designs/core/routing/router.dart';
import 'package:recast_designs/features/food_details/presentation/views/food_details_screen.dart';
import 'package:recast_designs/features/home/domain/models/food_menu.dart';
import 'package:recast_designs/features/home/presentation/views/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like login screen, onboarding screen
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.foodDetailsScreen:
        final foodMenu = arguments as FoodMenu;
        return MaterialPageRoute(
          builder: (_) => FoodDetailsScreen(foodMenu: foodMenu),
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No route found'))),
        );
    }
  }
}
