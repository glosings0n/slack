import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light, 
    datePickerTheme: const DatePickerThemeData(
      backgroundColor: Colors.blue,
    ),
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poiretOne(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
      titleMedium: GoogleFonts.poiretOne(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w900,
      ),
      titleSmall: GoogleFonts.poiretOne(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w900,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    datePickerTheme: const DatePickerThemeData(
      backgroundColor: Colors.blue,
    ),
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poiretOne(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
      titleMedium: GoogleFonts.poiretOne(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w900,
      ),
      titleSmall: GoogleFonts.poiretOne(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w900,
      ),
    ),
  );
}