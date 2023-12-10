import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final textTheme = CustomTextTheme(
    title1: TextStyle(
      fontFamily: GoogleFonts.lato().fontFamily,
      fontSize: 25,
      fontWeight: FontWeight.w600,
      height: 25 / 20,
      letterSpacing: 0,
    ),
    title2: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        height: 30 / 20,
        letterSpacing: 0,
        color: Colors.white),
  );
}

class CustomTextTheme {
  final TextStyle title1;
  final TextStyle title2;

  const CustomTextTheme({
    required this.title1,
    required this.title2,
  });
}
