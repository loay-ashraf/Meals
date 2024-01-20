import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/meal.dart';
import 'package:meals/data/dummy_data.dart';

final Provider<List<Meal>> mealsProvider = Provider((ref) => dummyMeals);
