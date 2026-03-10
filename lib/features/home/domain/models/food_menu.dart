import 'package:recast_designs/core/constants/app_assets.dart';

class FoodMenu {
  final String id;
  final String title;
  final String price;
  final String imagePath;
  final bool isTrending;
  final String description;
  final String category;
  final List<String> preparation;

  FoodMenu({
    required this.id,
    required this.title,
    required this.price,
    required this.imagePath,
    this.isTrending = false,
    this.description = '',
    this.category = '',
    this.preparation = const [],
  });

  static final List<FoodMenu> dummyData = [
    FoodMenu(
      id: '1',
      title: 'Tenderloin Steak with Grilled Vegetables',
      price: '45.95',
      imagePath: AppAssets.food4,
      isTrending: true,
      category: 'Main Course',
      description:
          'A premium cut of beef tenderloin, grilled to perfection and served with a medley of seasonal grilled vegetables drizzled with herb butter.',
      preparation: ['30 Minutes', 'Serving Size: 1'],
    ),
    FoodMenu(
      id: '2',
      title: 'Shared Meal and Drinks',
      price: '89.95',
      imagePath: AppAssets.food2,
      category: 'Sharing Platter',
      description:
          'A curated sharing platter featuring a selection of our finest appetizers, mains, and soft drinks for two — perfect for a special occasion.',
      preparation: ['25 Minutes', 'Serving Size: 2'],
    ),
    FoodMenu(
      id: '3',
      title: '25 Piece Sushi Boat with Three Sides',
      price: '49.95',
      imagePath: AppAssets.food1,
      category: 'Japanese',
      description:
          'An artfully crafted sushi boat featuring 25 premium rolls and nigiri pieces, served alongside three chef-selected side dishes.',
      preparation: ['20 Minutes', 'Serving Size: 2'],
    ),
    FoodMenu(
      id: '4',
      title: 'Cesar Salad with Grilled Chicken and Parmesan',
      price: '24.95',
      imagePath: AppAssets.food3,
      category: 'Salads',
      description:
          'Crisp romaine lettuce tossed in a classic Caesar dressing, topped with juicy grilled chicken strips, shaved Parmesan, and house-made croutons.',
      preparation: ['15 Minutes', 'Serving Size: 1'],
    ),
  ];
}
