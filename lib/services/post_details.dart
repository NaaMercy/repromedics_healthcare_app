import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/services/post_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  const PostDetail({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(post.location),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                  child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Location"),
                    subtitle: Text(post.location),
                  ),
                  ListTile(
                    title: Text("Name"),
                    subtitle: Text("${post.name}"),
                  ),
                  ListTile(
                    title: Text("Body"),
                    subtitle: Text(post.body),
                  ),
                  ListTile(
                    title: Text("User Name"),
                    subtitle: Text("${post.userName}"),
                  ),
                ],
              ))),
        ));
  }
}
