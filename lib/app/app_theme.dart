import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData light() {
    final ColorScheme kColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 131, 57, 0),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: kColorScheme,
      textTheme: GoogleFonts.latoTextTheme(),
    );
  }

  static ThemeData dark() {
    final ColorScheme kColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 131, 57, 0),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: kColorScheme,
      textTheme: GoogleFonts.latoTextTheme(),
    );
  }
}
