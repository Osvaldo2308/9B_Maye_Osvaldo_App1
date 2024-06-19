import 'package:flutter/material.dart';
import '/widgets/post_item.dart'; // Importa el widget PostItem
import '/datos/datos.dart'; // Importa los datos


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: ListCard.map((post) {
            return PostItem(
              username: post['username']!,
              avatar: post['avatar']!,
              postImage: post['postImage']!,
              likes: post['likes']!,
              caption: post['caption']!,
            );
          }).toList(),
        ),
      ),
    );
  }
}