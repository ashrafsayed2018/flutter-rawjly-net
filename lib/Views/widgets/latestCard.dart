import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/posts/show.dart';
import 'package:rawjly_net/Views/user/profile.dart';
import 'package:rawjly_net/Views/widgets/PostMetdData.dart';
import 'package:rawjly_net/Views/widgets/Views.dart';
import 'package:rawjly_net/Views/widgets/likes.dart';

class LatestCard extends StatefulWidget {
  final int index;
  const LatestCard({Key? key, required this.index}) : super(key: key);

  @override
  State<LatestCard> createState() => _LatestCardState();
}

class _LatestCardState extends State<LatestCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        children: [
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              }),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // username
                    const Text(
                      'rawjly',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                    // prifile image
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image:
                              NetworkImage('https://picsum.photos/250?image=9'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Card(
            elevation: 5,
            child: Column(
              children: [
                // nwtwork image
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const ShowPost(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      height: 190,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const PostMetaData(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
