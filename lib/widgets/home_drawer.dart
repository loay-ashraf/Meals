import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer(
      {super.key,
      required this.selectedScreenId,
      required this.onSelectScreen});

  final String selectedScreenId;
  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 18),
                Text(
                  'Cooking Up!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
            child: Column(
              children: [
                ListTile(
                  selected: selectedScreenId == 'home',
                  leading: Icon(
                    Icons.home,
                    size: 26,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  title: Text(
                    'Home',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 24,
                        ),
                  ),
                  onTap: () {
                    onSelectScreen('home');
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  selected: selectedScreenId == 'filters',
                  leading: Icon(
                    Icons.filter_list,
                    size: 26,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  title: Text(
                    'Filters',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 24,
                        ),
                  ),
                  onTap: () {
                    onSelectScreen('filters');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
