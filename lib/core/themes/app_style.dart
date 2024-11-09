import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  TextStyle get title => GoogleFonts.quicksand(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: AppTheme.colors.appNeutralSolid.color000,
      );

  TextStyle get subtitle => GoogleFonts.quicksand(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.appNeutralSolid.color000,
      );

  TextStyle get sectionHeader => GoogleFonts.quicksand(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.appNeutralSolid.color000,
      );

  TextStyle get body => GoogleFonts.quicksand(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppTheme.colors.appNeutralSolid.color000,
      );

  TextStyle get bodySmall => GoogleFonts.quicksand(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppTheme.colors.appNeutralSolid.color000,
      );

  TextStyle get label => GoogleFonts.quicksand(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.appNeutralSolid.color000,
      );

  TextStyle get buttonText => GoogleFonts.quicksand(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.appNeutralSolid.color0,
      );

  TextStyle get footnote => GoogleFonts.quicksand(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: AppTheme.colors.appNeutralSolid.color000,
      );

  TextStyle get error => GoogleFonts.quicksand(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.appError.color500,
      );
}
