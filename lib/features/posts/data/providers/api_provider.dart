import 'package:challenge_somnio/features/posts/data/models/post_model.dart';
import 'package:challenge_somnio/core/config/env_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final Dio _dio = Dio(BaseOptions(baseUrl: EnvConstants.baseUrl));

  Future<Either<Exception, List<Post>>> fetchPosts() async {
    try {
      final response = await _dio.get(EnvConstants.postsEndpoint);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;

        List<Post> posts = data.asMap().entries.map((entry) {
          final index = entry.key;
          final postData = entry.value;

          return Post.fromJson({
            ...postData,
            'imageUrl': 'https://picsum.photos/200/300?random=$index'
          });
        }).toList();

        return Right(posts);
      } else {
        return Left(Exception('Error loading posts'));
      }
    } catch (e) {
      return Left(Exception('Error: $e'));
    }
  }
}
