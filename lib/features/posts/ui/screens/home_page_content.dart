import 'package:challenge_somnio/core/themes/app_theme.dart';
import 'package:challenge_somnio/core/widgets/empty_state_widget.dart';
import 'package:challenge_somnio/core/widgets/error_display_widget.dart';
import 'package:challenge_somnio/core/widgets/loading_indicator.dart';
import 'package:challenge_somnio/core/widgets/sommnio_sliver_app_bar.dart';
import 'package:challenge_somnio/features/posts/data/models/post_model.dart';
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
  late final PostCubit _postCubit;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _postCubit = context.read<PostCubit>();
    _postCubit.fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return CustomScrollView(
      slivers: [
        const SommnioSliverAppBar(),
        SliverToBoxAdapter(
          child: _buildHeader(),
        ),
        _postBuilder(size),
      ],
    );
  }

  BlocBuilder<PostCubit, PostState> _postBuilder(Size size) {
    return BlocBuilder<PostCubit, PostState>(
      builder: (context, state) {
        if (state.status == PostStatus.indexLoading && state.posts.isEmpty) {
          return const SliverFillRemaining(
            child: LoadingIndicator(),
          );
        } else if (state.status == PostStatus.indexFailure) {
          return SliverFillRemaining(
              child: ErrorDisplayWidget(errorMessage: state.error!));
        } else if (state.status == PostStatus.indexSuccess ||
            state.posts.isNotEmpty) {
          return _buildPostGrid(size, posts: state.posts);
        } else {
          return const SliverFillRemaining(
            child: EmptyStateWidget(),
          );
        }
      },
    );
  }

  Widget _buildPostGrid(Size size, {required List<Post> posts}) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 10,
        mainAxisExtent: size.height * 0.525,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return PostCard(post: posts[index]);
        },
        childCount: posts.length,
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Blog',
            style: AppTheme.style.subtitle.copyWith(
              fontWeight: FontWeight.w800,
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
