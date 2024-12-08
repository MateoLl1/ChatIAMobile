

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


final appColorsList = <Color>[
  Colors.blue,
  Colors.redAccent,
  Colors.orangeAccent,
];

class AppTheme {

  final int selectedColor;
  final bool darkTheme;

  AppTheme({
    required this.selectedColor, 
    required this.darkTheme
  });


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: appColorsList[selectedColor],
    brightness: darkTheme ? Brightness.dark: Brightness.light,
    textTheme: GoogleFonts.montserratTextTheme(
      const TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 30
        )
      )
    ),
  );

}
