import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ChipCategory extends StatelessWidget {
  final String label;
  const ChipCategory({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: AppTheme.colors.appBlue.color800,
        borderRadius: BorderRadius.circular(16),
      ),
      child: AutoSizeText(
        label,
        style: AppTheme.style.label.copyWith(
          color: AppTheme.colors.white,
        ),
        maxLines: 1,
        minFontSize: 8,
        maxFontSize: 12,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
