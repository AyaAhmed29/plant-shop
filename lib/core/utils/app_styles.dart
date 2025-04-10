import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/core/utils/app_colors.dart';

abstract class AppStyle {
  static TextStyle style50 = TextStyle(
    color: AppColors.darkGreen,
    fontSize: 50,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.notoSerifHebrew().fontFamily,
  );
  static TextStyle style18 = TextStyle(
    fontSize: 18,
    fontFamily: GoogleFonts.libreFranklin().fontFamily,
  );
  static TextStyle style25 = TextStyle(
      color: AppColors.darkGreen,
      fontSize: 25,
      fontFamily: GoogleFonts.notoSerifHebrew().fontFamily,
      fontWeight: FontWeight.w700);
  static TextStyle style16 = TextStyle(
    fontSize: 16,
    fontFamily: GoogleFonts.libreFranklin().fontFamily,
  );
}
