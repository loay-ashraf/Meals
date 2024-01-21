import 'package:flutter/material.dart';

import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsList extends StatelessWidget {
  const MealsList(
      {super.key,
      required List<Meal> meals,
      required void Function(Meal meal) onSelectMeal})
      : _meals = meals,
        _onSelectMeal = onSelectMeal;

  final List<Meal> _meals;
  final void Function(Meal meal) _onSelectMeal;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    if (_meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: _meals.length,
        itemBuilder: (ctx, index) => MealItem(
          meal: _meals[index],
          onSelectMeal: _onSelectMeal,
        ),
      );
    }

    return content;
  }
}
