import 'package:challenge_somnio/features/posts/data/models/post_model.dart';

enum PostStatus {
  initial,
  indexLoading,
  indexSuccess,
  indexFailure,
}

class PostState {
  final List<Post> posts;
  final String error;
  final PostStatus status;
  final int currentPage;
  final bool hasReachedMax;

  PostState({
    required this.posts,
    required this.error,
    required this.status,
    required this.currentPage,
    required this.hasReachedMax,
  });

  factory PostState.initial() {
    return PostState(
      posts: [],
      error: '',
      status: PostStatus.initial,
      currentPage: 1,
      hasReachedMax: false,
    );
  }

  PostState copyWith({
    List<Post>? posts,
    String? error,
    PostStatus? status,
    int? currentPage,
    bool? hasReachedMax,
  }) {
    return PostState(
      posts: posts ?? this.posts,
      error: error ?? this.error,
      status: status ?? this.status,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}
