import 'package:flutter/material.dart';
import 'package:rest_api/model/post_model.dart';
import 'package:rest_api/view/widgets/post_card_widget.dart';

class PostListWidget extends StatelessWidget {
  final List<Post> posts;

  const PostListWidget({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return PostCardWidget(post: post);
      },
    );
  }
}