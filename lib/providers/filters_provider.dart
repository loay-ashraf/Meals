import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/filter.dart';

class FiltersStateNotifier extends StateNotifier<Set<Filter>> {
  FiltersStateNotifier() : super({});

  void toggleFilter({required Filter filter}) {
    final isOn = state.contains(filter);

    if (isOn) {
      state = state.where((element) => element != filter).toSet();
    } else {
      state = {...state, filter};
    }
  }
}

final StateNotifierProvider<FiltersStateNotifier, Set<Filter>> filtersProvider =
    StateNotifierProvider((ref) => FiltersStateNotifier());
