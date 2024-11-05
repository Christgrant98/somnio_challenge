class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  final String imageUrl;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
      'imageUrl': imageUrl,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  factory Post.fromJson(Map<String, dynamic> json) => Post.fromMap(json);
}
