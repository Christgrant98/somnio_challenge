import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SommnioSliverAppBar extends StatelessWidget {
  const SommnioSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SliverAppBar(
      toolbarHeight: size.height * .01,
      backgroundColor: AppTheme.colors.appBlue.color100,
      floating: true,
      pinned: false,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(size.height * .05),
        child: TabBar(
          labelStyle: AppTheme.style.subtitle,
          tabs: const [
            Tab(text: 'Posts'),
            Tab(text: 'Other'),
          ],
        ),
      ),
    );
  }
}
