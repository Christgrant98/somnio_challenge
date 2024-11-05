import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:challenge_somnio/features/posts/ui/widgets/post_card.dart';
import 'package:challenge_somnio/features/posts/logic/post_cubit.dart';
import 'package:challenge_somnio/features/posts/logic/post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  HomePageContentState createState() => HomePageContentState();
}

class HomePageContentState extends State<HomePageContent> {
  int _visiblePostCount = 10;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _fetchInitialPosts();

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _fetchInitialPosts() {
    context.read<PostCubit>().fetchPosts();
  }

  void _onScroll() {
    if (_scrollController.position.atEdge) {
      bool isBottom = _scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent;
      if (isBottom &&
          _visiblePostCount < context.read<PostCubit>().state.posts.length) {
        setState(() {
          _visiblePostCount += 10;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(),
        Expanded(
          child: BlocBuilder<PostCubit, PostState>(
            builder: (context, state) {
              if (state.status == PostStatus.indexLoading &&
                  state.posts.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.status == PostStatus.indexFailure) {
                return Center(child: Text('Error: ${state.error}'));
              } else if (state.status == PostStatus.indexSuccess ||
                  state.posts.isNotEmpty) {
                return _buildPostGrid(state);
              } else {
                return const Center(child: Text('No posts available'));
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPostGrid(PostState state) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const double columnWidth = 280;
        final int crossAxisCount = constraints.maxWidth < 600
            ? 2
            : (constraints.maxWidth / columnWidth).floor();

        return GridView.builder(
          controller: _scrollController,
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 4,
            mainAxisSpacing: 10,
            mainAxisExtent: 500,
          ),
          itemCount: _visiblePostCount.clamp(0, state.posts.length),
          itemBuilder: (context, index) {
            return PostCard(post: state.posts[index]);
          },
        );
      },
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Blog',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Explore our latest posts and updates',
            style: AppTheme.style.body,
          ),
        ],
      ),
    );
  }
}
