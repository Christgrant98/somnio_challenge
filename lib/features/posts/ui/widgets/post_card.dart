import 'package:challenge_somnio/features/posts/data/models/post_model.dart';
import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:challenge_somnio/features/posts/ui/widgets/chip_category.dart';
import 'package:challenge_somnio/core/utils/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PostCard extends StatefulWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  PostCardState createState() => PostCardState();
}

class PostCardState extends State<PostCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.sizeOf(context).width < 600;

    return MouseRegion(
      onEnter: (_) => _setHovering(true),
      onExit: (_) => _setHovering(false),
      child: Card(
        color: AppTheme.colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageHeader(),
            _buildContent(isMobile),
            const Spacer(),
            _buildFooterBanner(),
          ],
        ),
      ),
    );
  }

  void _setHovering(bool hover) {
    setState(() => isHovering = hover);
  }

  Widget _buildImageHeader() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
      child: Image.network(
        widget.post.imageUrl,
        height: 150,
        width: double.infinity,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Container(
              height: 150,
              width: double.infinity,
              color: AppTheme.colors.appBlue.color500,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildContent(bool isMobile) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ChipCategory(label: 'Community'),
          const SizedBox(height: 8),
          _buildTitle(),
          const SizedBox(height: 5),
          _buildBodyText(),
          if (isMobile || isHovering) _buildViewMore(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return AutoSizeText(
      widget.post.title.capitalizeFirst(),
      style: AppTheme.style.title.copyWith(),
      maxLines: 3,
      minFontSize: 18,
      maxFontSize: 22,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildBodyText() {
    return AutoSizeText(
      widget.post.body,
      style: AppTheme.style.body.copyWith(),
      maxLines: 6,
      maxFontSize: 18,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildViewMore() {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AutoSizeText(
            'View more',
            style: AppTheme.style.label.copyWith(
              color: AppTheme.colors.appBlue.color800,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            minFontSize: 10,
            maxFontSize: 14,
            overflow: TextOverflow.ellipsis,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Icon(
              Icons.arrow_forward_outlined,
              color: AppTheme.colors.appBlue.color800,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterBanner() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            AppTheme.colors.appBlue.color800,
            AppTheme.colors.appBlue.color600,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildFooterText('Services Software at', fontSize: 8),
                _buildFooterText('Google I/O', fontSize: 15),
                _buildFooterText('2026', fontSize: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooterText(String text, {required double fontSize}) {
    return AutoSizeText(
      text,
      style: AppTheme.style.label.copyWith(
        color: AppTheme.colors.white,
        fontSize: fontSize,
      ),
      maxLines: 1,
      minFontSize: fontSize,
      maxFontSize: fontSize,
      overflow: TextOverflow.ellipsis,
    );
  }
}
