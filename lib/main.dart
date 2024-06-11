import 'package:flutter/material.dart';
import 'widgets/post_section.dart';

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
