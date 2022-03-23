import 'package:flutter/foundation.dart';

class Post {
  final int userName;
  final int name;
  final String location;
  final String body;

  Post({
    required this.userName,
    required this.name,
    required this.location,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userName: json['userName'] as int,
      name: json['name'] as int,
      location: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
