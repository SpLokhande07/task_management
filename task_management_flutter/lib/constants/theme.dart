import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.black,
    primarySwatch: Colors.blue, // Add a primary color swatch for vibrancy
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue, // Use seed color for consistent color generation
      brightness: Brightness.light,
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.deepOrange, // Vibrant accent color alternative
      onSecondary: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black, // AppBar background color
      iconTheme: IconThemeData(color: Colors.white), // Icon color of the AppBar
      titleTextStyle: TextStyle(
          fontSize: 20.0, color: Colors.white), // Example for titleTextStyle
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black), // Text color for body
      bodyMedium: TextStyle(color: Colors.black87), // Text color for body 2
      titleMedium: TextStyle(color: Colors.black), // Text color for subtitle
      titleSmall: TextStyle(color: Colors.black54), // Text color for subtitle 2
      titleLarge: TextStyle(color: Colors.black), // Text color for headline 6
    ),

    // **Customizable properties:**

    buttonTheme: ButtonThemeData(
      // Customize button properties (shape, padding, etc.)
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
    cardTheme: CardTheme(
      // Customize card properties (elevation, shadow, etc.)
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    chipTheme: ChipThemeData(
      // Customize chip properties (shape, padding, etc.)
      backgroundColor: Colors.blueGrey[100],
      selectedColor: Colors.blue,
      labelStyle: TextStyle(color: Colors.black),
    ),
    dialogTheme: DialogTheme(
      // Customize dialog properties (shape, background color, etc.)
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    ),
    dividerTheme: DividerThemeData(
      // Customize divider properties (thickness, color, etc.)
      thickness: 1.0,
      color: Colors.grey[300],
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      // Customize floating action button properties (color, shape, etc.)
      backgroundColor: Colors.deepOrange, // You can use secondary color here
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.white,
    primarySwatch: Colors.blue, // Add a primary color swatch for vibrancy
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue, // Use seed color for consistent color generation
      brightness: Brightness.dark,
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.deepOrange, // Vibrant accent color alternative
      onSecondary: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor:
          Color.fromARGB(255, 89, 42, 42), // AppBar background color
      iconTheme: IconThemeData(color: Colors.black), // Icon color of the AppBar
      titleTextStyle: TextStyle(
          fontSize: 20.0, color: Colors.black), // Example for titleTextStyle
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white), // Text color for body
      bodyMedium: TextStyle(color: Colors.white70), // Text color for body 2
      titleMedium: TextStyle(color: Colors.white), // Text color for subtitle
      titleSmall: TextStyle(color: Colors.white70), // Text color for subtitle 2
      titleLarge: TextStyle(color: Colors.white), // Text color for headline 6
    ),

    // **Customizable properties:**

    buttonTheme: ButtonThemeData(
      // Customize button properties (shape, padding, etc.)
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
    cardTheme: CardTheme(
      // Customize card properties (elevation, shadow, etc.)
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    chipTheme: ChipThemeData(
      // Customize chip properties (shape, padding, etc.)
      backgroundColor: Colors.blueGrey[700],
      selectedColor: Colors.blue,
      labelStyle: TextStyle(color: Colors.white),
    ),
    dialogTheme: DialogTheme(
      // Customize dialog properties (shape, background color, etc.)
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    ),
    dividerTheme: DividerThemeData(
      // Customize divider properties (thickness, color, etc.)
      space: 12.0,
      thickness: 2.0,
      color: Colors.white24,
    ),
  );
}
