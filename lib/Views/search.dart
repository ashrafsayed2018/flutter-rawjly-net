import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/posts/show.dart';
import 'package:rawjly_net/Views/user/profile.dart';
import 'package:rawjly_net/Views/widgets/PostMetdData.dart';
import 'package:rawjly_net/Views/widgets/latestCard.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // search controller
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, dynamic>> posts = [
    {
      'title': 'Post 1',
      'description': 'This is post 1',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 1',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 2',
      'description': 'This is post 2',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 2',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 3',
      'description': 'This is post 3',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 3',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 4',
      'description': 'This is post 4',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 4',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 5',
      'description': 'This is post 5',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 5',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 6',
      'description': 'This is post 6',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 6',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 7',
      'description': 'This is post 7',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 7',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 8',
      'description': 'This is post 8',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 8',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 9',
      'description': 'This is post 9',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 9',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 10',
      'description': 'This is post 10',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 10',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
    {
      'title': 'Post 11',
      'description': 'This is post 11',
      'image': 'https://picsum.photos/200/300/?random',
      'user': {
        'name': 'User 11',
        'image': 'https://picsum.photos/200/300/?random',
      },
      'createdAt': '2020-05-01T00:00:00.000Z',
      'views': '100',
      'likes': '10',
    },
  ];
  // search result
  List<Map<String, dynamic>> searchResult = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
          ),
          child: TextFormField(
            textDirection: TextDirection.rtl,
            onChanged: (value) {
              setState(() {
                searchResult = posts
                    .where((post) => post['title']
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toList();
              });
            },
            controller: _searchController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              hintText: 'بحث',
              hintTextDirection: TextDirection.rtl,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.filter_list),
            ),
          ),
        ),
      ),
      body: _searchController.text.isEmpty || searchResult.isEmpty
          ? const Center(
              child: Text('No result found'),
            )
          : Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: ListView.builder(
                itemCount: searchResult.length,
                itemBuilder: (context, index) {
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // username
                                  Text(
                                    searchResult[index]['user']['name'],
                                    style: const TextStyle(
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
                                      image: DecorationImage(
                                        image: NetworkImage(searchResult[index]
                                            ['user']['image']),
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
                                    searchResult[index]['image'],
                                    height: 190,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              PostMetaData(post: searchResult[index]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }
}
