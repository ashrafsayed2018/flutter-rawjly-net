import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/noitifications.dart';
import 'package:rawjly_net/Views/posts/createPost.dart';
import 'package:rawjly_net/Views/search.dart';

import 'package:rawjly_net/Views/user/createProfile.dart';
import 'Views/auth/login.dart';
import 'Views/auth/register.dart';
import 'Views/home/home.dart';
import 'Views/posts/show.dart';
import 'Views/user/profile.dart';
import 'Views/widgets/BottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List _screens = const [
    Home(),
    Profile(),
    CreatePost(),
    Search(),
    Notifications(),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_currentIndex],
        // check for page name in the console
        // to see the current page name

        bottomNavigationBar: BottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
