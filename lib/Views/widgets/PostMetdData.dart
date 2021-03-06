import 'package:flutter/material.dart';

import 'Views.dart';
import 'likes.dart';

class PostMetaData extends StatefulWidget {
  final Map<String, dynamic> post;
  const PostMetaData({Key? key, required this.post}) : super(key: key);

  @override
  State<PostMetaData> createState() => _PostMetaDataState();
}

class _PostMetaDataState extends State<PostMetaData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      //the width is full width
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Likes(),
              Views(),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            widget.post['title'],
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          // post date
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('20-10-2020'),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.calendar_month),
            ],
          )
        ],
      ),
    );
  }
}
