import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  // AppBar Theme
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0,
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.blue,
    elevation: 0,
  ),

  // Color Scheme
  colorScheme: const ColorScheme.light(
    primary: Color.fromARGB(255, 126, 162, 128),
    secondary: Colors.white,
    background: Colors.black,
    surface: Colors.white,
    onBackground: Colors.white,
    onSurface: Colors.black,
    onPrimary: Colors.white,
    onSecondary: Color.fromARGB(255, 126, 162, 128),
    error: Colors.red,
  ),

  // Icon Theme Data
  iconTheme: IconThemeData(
    color: Colors.grey[500]!,
  ),

  // Text Theme Data
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.grey[300]!,
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.grey[900]!,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.grey[900]!,
    ),

    // Body Theme Data
    bodyLarge: TextStyle(
      fontSize: 20,
      color: Colors.grey[700]!,
    ),

    bodyMedium: TextStyle(
      fontSize: 18,
      color: Colors.grey[700]!,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      color: Colors.grey[700]!,
    ),
  ),
);
