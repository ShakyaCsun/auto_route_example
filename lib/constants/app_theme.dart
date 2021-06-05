import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData.from(
      colorScheme: const ColorScheme.light(primary: Colors.pinkAccent),
      textTheme: AppTheme.textTheme,
    ).copyWith(
      appBarTheme: AppTheme._getAppBarTheme(),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.from(
      colorScheme: ColorScheme.dark(primary: Colors.deepOrange.shade500),
      textTheme: AppTheme.textTheme,
    ).copyWith(
      appBarTheme: AppTheme._getAppBarTheme(brightness: Brightness.dark),
    );
  }

  static AppBarTheme _getAppBarTheme({
    Brightness brightness = Brightness.light,
  }) {
    return AppBarTheme(
      centerTitle: true,
      textTheme: AppTheme.textTheme.copyWith(
        headline6: AppTheme.textTheme.headline6?.copyWith(color: Colors.white),
      ),
      brightness: brightness,
    );
  }

  static final textTheme = TextTheme(
    headline1: GoogleFonts.alegreyaSans(
      fontSize: 111,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.alegreyaSans(
      fontSize: 69,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.alegreyaSans(
      fontSize: 55,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.alegreyaSans(
      fontSize: 39,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.alegreyaSans(
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.alegreyaSans(
      fontSize: 23,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: GoogleFonts.alegreyaSans(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.alegreyaSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: GoogleFonts.alegreya(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.alegreya(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: GoogleFonts.alegreya(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.alegreya(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: GoogleFonts.alegreya(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );
}
