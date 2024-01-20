import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:collection/collection.dart';

import 'package:meals/models/meal.dart';
import 'meals_provider.dart';
import 'filters_provider.dart';

final Provider<List<Meal>> filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider);
  final selectedFilters = ref.watch(filtersProvider);
  final filteredMeals = selectedFilters.isEmpty
      ? meals
      : meals
          .where((meal) =>
              const SetEquality().equals(selectedFilters, meal.matchingFilters))
          .toList();
  return filteredMeals;
});
