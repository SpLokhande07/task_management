import 'package:flutter/material.dart';

ThemeData lightTheme() {
  const Color whiteColor = Color(0xffF6F6F6);
  const Color greenColor = Color(0xffC7FFD8);
  const Color blueColor = Color(0xff98DED9);
  const Color violetColor = Color(0xff161D6F);
  return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: whiteColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: whiteColor,
      ));
}
