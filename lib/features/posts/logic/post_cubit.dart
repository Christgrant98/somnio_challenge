import 'package:challenge_somnio/features/posts/data/repositories/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostRepository postRepository = PostRepository();

  PostCubit() : super(PostState.initial());

  Future<void> fetchPosts() async {
    emit(state.copyWith(status: PostStatus.indexLoading));

    final result = await postRepository.getPosts();

    result.fold(
      (error) {
        emit(state.copyWith(
          status: PostStatus.indexFailure,
          error: error.toString(),
        ));
      },
      (posts) {
        emit(state.copyWith(
          status: PostStatus.indexSuccess,
          posts: posts,
        ));
      },
    );
  }
}
