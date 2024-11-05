import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SomnioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SomnioAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppTheme.colors.appBlue.color100,
      title: Text(
        'Blog',
        style: AppTheme.style.title,
      ),
      bottom: TabBar(
        labelStyle: AppTheme.style.subtitle,
        tabs: const [
          Tab(text: 'Posts'),
          Tab(text: 'Other'),
        ],
      ),
    );
  }
}
