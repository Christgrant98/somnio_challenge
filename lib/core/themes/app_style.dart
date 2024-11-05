import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  TextStyle get title => GoogleFonts.quicksand(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: Colors.black87,
      );

  TextStyle get subtitle => GoogleFonts.quicksand(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      );

  TextStyle get sectionHeader => GoogleFonts.quicksand(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      );

  TextStyle get body => GoogleFonts.quicksand(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );

  TextStyle get bodySmall => GoogleFonts.quicksand(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );

  TextStyle get label => GoogleFonts.quicksand(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      );

  TextStyle get buttonText => GoogleFonts.quicksand(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  TextStyle get footnote => GoogleFonts.quicksand(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );
}
