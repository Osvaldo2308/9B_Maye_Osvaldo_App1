import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram'),
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
          ],
        ),
        body: const PostSection(),
      ),
    );
  }
}

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
            caption: 'El mundo es bello',
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

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.username,
    required this.avatar,
    required this.postImage,
    required this.likes,
    required this.caption,
  });

  final String username;
  final String avatar;
  final String postImage;
  final String likes;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Post Header
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatar),
              ),
              const SizedBox(width: 8),
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        // Post Image
        Image.asset(postImage),
        // Post Actions
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.comment),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),
        // Post Likes
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              likes,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        // Post Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              caption,
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
