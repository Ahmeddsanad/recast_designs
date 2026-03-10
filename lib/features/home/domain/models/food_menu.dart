import 'package:recast_designs/core/constants/app_assets.dart';

class FoodMenu {
  final String id;
  final String title;
  final String price;
  final String imagePath;
  final bool isTrending;

  FoodMenu({
    required this.id,
    required this.title,
    required this.price,
    required this.imagePath,
    this.isTrending = false,
  });

  static final List<FoodMenu> dummyData = [
    FoodMenu(
      id: '1',
      title: 'Tenderloin Steak with Grilled Vegetables',
      price: '49.95',
      imagePath: AppAssets.food4,
      isTrending: true,
    ),
    FoodMenu(
      id: '2',
      title: 'Shared Meal and Drinks',
      price: '49.95',
      imagePath: AppAssets.food2,
    ),
    FoodMenu(
      id: '3',
      title: '25 Piece Sushi Boat with Three Sides',
      price: '49.95',
      imagePath: AppAssets.food1,
    ),
    FoodMenu(
      //cesar salad
      id: '4',
      title: 'Cesar Salad with Grilled Chicken and Parmesan',
      price: '49.95',
      imagePath: AppAssets.food3,
    ),
  ];
}
