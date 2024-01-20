import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/meal.dart';

class FavoriteMealsStateNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsStateNotifier() : super([]);

  bool toggleMealFavoriteStatus({required Meal meal}) {
    final isFavorite = state.contains(meal);

    if (isFavorite) {
      state = state.where((element) => element.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final StateNotifierProvider<FavoriteMealsStateNotifier, List<Meal>>
    favoriteMealsProvider =
    StateNotifierProvider((ref) => FavoriteMealsStateNotifier());
