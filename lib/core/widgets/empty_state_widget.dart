import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No items available',
        style: AppTheme.style.label,
      ),
    );
  }
}
