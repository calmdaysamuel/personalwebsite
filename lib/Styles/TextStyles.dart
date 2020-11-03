import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final workThumbnailTitle = GoogleFonts.inter(
      textStyle:
          TextStyle(fontSize: 20.0, color: Color(0xffffffff), height: 1.6));
  static final titleTextStyle = GoogleFonts.adventPro(
      textStyle: TextStyle(
          fontSize: 32.0,
          color: Color(0xfff5f7fa),
          height: 1.6,
          letterSpacing: 2.0));

  static final footerBodyText = GoogleFonts.inter(
      textStyle:
          TextStyle(fontSize: 18.0, color: Color(0xff656d78), height: 1.6));
  static final footerBodyText2 = GoogleFonts.inter(
      textStyle:
          TextStyle(fontSize: 14.0, color: Color(0xff656d78), height: 1.6));
  static final footerHeaderText = GoogleFonts.inter(
      textStyle: TextStyle(
          fontSize: 11.0,
          color: Color(0xffaab2bd),
          height: 1.0,
          letterSpacing: 2.0));

  static final footerReservedText = GoogleFonts.inter(
      textStyle: TextStyle(
    fontSize: 14.0,
    color: Color(0xff656d78),
  ));

  static final bioTextStyles = GoogleFonts.inter(
      textStyle:
          TextStyle(fontSize: 22.0, height: 1.6, color: Color(0xfff5f7fa)));

  static final ssText = GoogleFonts.inter(
      textStyle:
          TextStyle(fontSize: 14.0, height: 1.0, color: Color(0xffffffff)));

  static final blogText = GoogleFonts.inter(
      textStyle:
          TextStyle(fontSize: 18.0, height: 2.0, color: Color(0xffffffff)));

  static final blogHeader = GoogleFonts.inter(
      textStyle: TextStyle(
          fontSize: 28.0,
          height: 1.6,
          color: Color(0xffffffff),
          fontWeight: FontWeight.bold));

  static final blogDate = GoogleFonts.inter(
      textStyle: TextStyle(
    fontSize: 11.0,
    height: 1.0,
    color: Color(0xff656d78),
  ));
}
