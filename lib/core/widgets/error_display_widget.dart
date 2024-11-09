import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ErrorDisplayWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorDisplayWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Error: $errorMessage',
        style: AppTheme.style.error,
      ),
    );
  }
}
