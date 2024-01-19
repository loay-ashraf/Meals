import 'package:flutter/material.dart';
import 'package:meals/screens/home/home.dart';

import 'app_theme.dart';

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: AppTheme.light(),
      home: const HomeScreen(),
    );
  }
}
