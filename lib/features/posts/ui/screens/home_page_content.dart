import 'package:challenge_somnio/core/themes/app_theme.dart';
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
          child: Padding(
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
          ),
        ),
        BlocBuilder<PostCubit, PostState>(
          builder: (context, state) {
            if (state.status == PostStatus.indexLoading &&
                state.posts.isEmpty) {
              return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              );
            } else if (state.status == PostStatus.indexFailure) {
              return SliverFillRemaining(
                child: Center(
                  child: Text(
                    'Error: ${state.error}',
                    style: AppTheme.style.error,
                  ),
                ),
              );
            } else if (state.status == PostStatus.indexSuccess ||
                state.posts.isNotEmpty) {
              return _buildPostGrid(size, posts: state.posts);
            } else {
              return const SliverFillRemaining(
                child: Center(child: Text('No posts available')),
              );
            }
          },
        ),
      ],
    );
  }

  Widget _buildPostGrid(Size size, {required List<Post> posts}) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 10,
        mainAxisExtent: size.height * 0.55,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return PostCard(post: posts[index]);
        },
        childCount: posts.length,
      ),
    );
  }
}

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
