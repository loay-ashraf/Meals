import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/providers/favorite_meals_provider.dart';
import 'package:meals/widgets/meals_list.dart';

class FavoriteMealsScreen extends ConsumerWidget {
  const FavoriteMealsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);

    return MealsList(meals: favoriteMeals);
  }
}
