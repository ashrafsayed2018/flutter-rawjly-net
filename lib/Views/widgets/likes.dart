import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text('23'),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.favorite_outline_outlined),
      ],
    );
  }
}
