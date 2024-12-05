

import 'package:flutter/material.dart';

class AppTheme {

  final int selectedColor;
  final bool darkTheme;

  AppTheme({
    required this.selectedColor, 
    required this.darkTheme
  });


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: darkTheme ? Brightness.dark: Brightness.light
  );

}
