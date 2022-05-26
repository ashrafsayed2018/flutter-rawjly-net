import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/posts/show.dart';
import 'package:rawjly_net/Views/widgets/PostMetdData.dart';

class FamousCard extends StatefulWidget {
  final int index;
  const FamousCard({Key? key, required this.index}) : super(key: key);

  @override
  State<FamousCard> createState() => _FamousCardState();
}

class _FamousCardState extends State<FamousCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShowPost(),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://picsum.photos/250?image=9',
                height: 160,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const PostMetaData(
            post: {'title': 'ashraf sayed'},
          ),
        ],
      ),
    );
  }
}
