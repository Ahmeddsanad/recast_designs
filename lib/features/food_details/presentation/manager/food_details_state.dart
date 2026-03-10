abstract class FoodDetailsState {
  final bool buttonPressed;
  FoodDetailsState({this.buttonPressed = false});
}

class FoodDetailsInitial extends FoodDetailsState {
  FoodDetailsInitial({super.buttonPressed});
}

class FoodDetailsShowOverlay extends FoodDetailsState {
  FoodDetailsShowOverlay({super.buttonPressed});
}
