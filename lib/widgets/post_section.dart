import 'package:flutter/material.dart';
import 'post_item.dart';

class PostSection extends StatelessWidget {
  const PostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PostItem(
            username: 'osvaldoackerman2308',
            avatar: 'images/avatar1.jpeg',
            postImage: 'images/post_1.jpeg',
            likes: 'Le gusta a gatitolindo123',
            caption: ':(((',
          ),
          PostItem(
            username: 'gatitolindo123',
            avatar: 'images/avatar2.jpeg',
            postImage: 'images/post_2.jpeg',
            likes: 'Le gusta a osvaldoackerman2308',
            caption: 'Hello World!!',
          ),
        ],
      ),
    );
  }
}
