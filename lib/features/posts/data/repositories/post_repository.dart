import 'package:dartz/dartz.dart';

import '../models/post_model.dart';
import '../providers/api_provider.dart';

class PostRepository {
  final ApiProvider apiProvider = ApiProvider();

  Future<Either<Exception, List<Post>>> getPosts() async {
    return await apiProvider.fetchPosts();
  }
}
