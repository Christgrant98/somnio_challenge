import 'package:challenge_somnio/features/posts/ui/screens/home_page_content.dart';
import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:challenge_somnio/core/widgets/layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Layout(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  const HomePageContent(),
                  _buildOtherContentTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtherContentTab() {
    return Center(
        child: Text(
      'Other content here',
      style: AppTheme.style.title,
    ));
  }
}
