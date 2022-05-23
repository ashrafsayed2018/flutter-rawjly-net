import 'package:flutter/material.dart';

class ShowPost extends StatefulWidget {
  const ShowPost({Key? key}) : super(key: key);

  @override
  State<ShowPost> createState() => _ShowPostState();
}

class _ShowPostState extends State<ShowPost> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Container(
              child: const Text('show post page'),
            ),
          ),
        ));
  }
}
