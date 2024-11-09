// test/features/posts/logic/post_cubit_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:challenge_somnio/features/posts/data/repositories/post_repository.dart';
import 'package:challenge_somnio/features/posts/logic/post_cubit.dart';
import 'package:challenge_somnio/features/posts/logic/post_state.dart';

class MockPostRepository extends Mock implements PostRepository {}

void main() {
  late MockPostRepository mockPostRepository;
  late PostCubit postCubit;

  setUp(() {
    mockPostRepository = MockPostRepository();
    postCubit = PostCubit()..postRepository = mockPostRepository;
  });

  tearDown(() {
    postCubit.close();
  });

  group('PostCubit', () {
    blocTest<PostCubit, PostState>(
      'emits [indexLoading, indexSuccess] when fetchPosts succeeds',
      build: () {
        when(() => mockPostRepository.getPosts()).thenAnswer(
          (_) async => const Right([/* Lista simulada de posts */]),
        );
        return postCubit;
      },
      act: (cubit) => cubit.fetchPosts(),
      expect: () => [
        PostState.initial().copyWith(status: PostStatus.indexLoading),
        PostState.initial().copyWith(
          status: PostStatus.indexSuccess,
          posts: [/* Lista simulada de posts */],
        ),
      ],
    );

    blocTest<PostCubit, PostState>(
      'emits [indexLoading, indexFailure] when fetchPosts fails',
      build: () {
        // Devuelve una excepción simulada
        when(() => mockPostRepository.getPosts()).thenAnswer(
          (_) async => Left(Exception('Error loading posts')),
        );
        return postCubit;
      },
      act: (cubit) => cubit.fetchPosts(),
      expect: () => [
        PostState.initial().copyWith(status: PostStatus.indexLoading),
        PostState.initial().copyWith(
          status: PostStatus.indexFailure,
          error: 'Exception: Error loading posts',
        ),
      ],
    );
  });
}
