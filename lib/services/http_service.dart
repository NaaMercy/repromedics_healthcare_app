import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart';
import 'package:repromedics_healthcare_app/services/post_model.dart';

class HttpService {
  get postsUrl => 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPosts() async {
    Response res = await get(postsUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw "Cant't get posts.";
    }
  }
}
