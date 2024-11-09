import 'package:challenge_somnio/features/posts/data/models/post_model.dart';
import 'package:equatable/equatable.dart';

enum PostStatus {
  initial,
  indexLoading,
  indexSuccess,
  indexFailure,
}

class PostState extends Equatable {
  final PostStatus status;
  final List<Post> posts;
  final String? error;

  const PostState({
    required this.status,
    this.posts = const [],
    this.error,
  });

  factory PostState.initial() {
    return const PostState(
      status: PostStatus.initial,
      posts: [],
      error: null,
    );
  }

  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    String? error,
  }) {
    return PostState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, posts, error];
}
