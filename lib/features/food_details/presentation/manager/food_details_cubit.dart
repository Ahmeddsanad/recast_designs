import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recast_designs/features/food_details/presentation/manager/food_details_state.dart';

class FoodDetailsCubit extends Cubit<FoodDetailsState> {
  FoodDetailsCubit() : super(FoodDetailsInitial());

  void onButtonDown() => emit(FoodDetailsInitial(buttonPressed: true));

  void onButtonUp() => emit(FoodDetailsInitial(buttonPressed: false));

  void addToOrder() {
    // Ignoring taps while overlay is shown.
    if (state is FoodDetailsShowOverlay) return;
    emit(FoodDetailsShowOverlay());
  }

  void overlayComplete() => emit(FoodDetailsInitial());
}
