import 'dart:ui';

import 'package:flutter/material.dart';

final ThemeData lightLiquidTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
  cardColor: Colors.white.withOpacity(0.3),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
    titleMedium: TextStyle(color: Colors.black),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.blueAccent,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.black),
  ),
);

final ThemeData darkLiquidTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black.withOpacity(0.9),
  cardColor: Colors.white.withOpacity(0.1),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.tealAccent,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.white),
  ),
);



class GlassContainer extends StatelessWidget {
  final Widget child;
  const GlassContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          padding: const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}

