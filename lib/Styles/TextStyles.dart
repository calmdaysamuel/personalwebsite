import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';

class TextStyles {
  static TextStyle buttonText = GoogleFonts.montserrat(
    color: ColorStyle.primaryWhite,
    fontSize: 13,
    fontWeight: FontWeight.w600,
    wordSpacing: 1.4,
  );

  static TextStyle buttonTextHover = GoogleFonts.montserrat(
      color: ColorStyle.primaryWhite,
      fontSize: 13,
      fontWeight: FontWeight.w600,
      wordSpacing: 1.4,
      decoration: TextDecoration.underline);

  static TextStyle cardHeading = GoogleFonts.montserrat(
      color: ColorStyle.primaryBlack,
      fontSize: 18.72,
      fontWeight: FontWeight.w600);

  static TextStyle cardHeading2 = GoogleFonts.montserrat(
      color: ColorStyle.primaryBlack,
      fontSize: 40,
      fontWeight: FontWeight.w600,
      letterSpacing: 2);

  static TextStyle cardBody = GoogleFonts.montserrat(
    color: ColorStyle.primaryBlack,
    fontSize: 16,
  );

  static TextStyle footerTitle = GoogleFonts.montserrat(
    color: ColorStyle.primaryWhite,
    fontSize: 50,
  );

  static TextStyle headerTitle = GoogleFonts.manrope(
      color: ColorStyle.primaryWhite,
      fontSize: 24,
      fontWeight: FontWeight.w600);

  static TextStyle previousButtonText = GoogleFonts.montserrat(
    color: ColorStyle.primaryBlack,
    fontSize: 14,
  );

  //Project
  static TextStyle projectHeading = GoogleFonts.libreBarcode39ExtendedText(
      color: ColorStyle.primaryWhite,
      fontSize: 24,
      fontWeight: FontWeight.w600);

  static TextStyle projectSubHeading = GoogleFonts.montserrat(
      color: ColorStyle.primaryBlack,
      fontSize: 24,
      fontWeight: FontWeight.bold);

  static TextStyle projectBodyText = GoogleFonts.montserrat(
    color: ColorStyle.primaryBlack,
    fontSize: 16,
  );

  static TextStyle categoryHeadingText = GoogleFonts.montserrat(
      color: ColorStyle.primaryBlack,
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: 2);

  static TextStyle bannerBodyText = GoogleFonts.montserrat(
      color: ColorStyle.primaryWhite,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      letterSpacing: 2);
}
