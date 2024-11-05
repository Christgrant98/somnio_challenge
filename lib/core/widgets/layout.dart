import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:challenge_somnio/core/widgets/somnio_app_bar.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;

  const Layout({
    super.key,
    required this.body,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.appNeutralSolid.color25,
      appBar: const SomnioAppBar(),
      body: body,
    );
  }
}
