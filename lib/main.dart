import 'package:flutter/material.dart';
import 'Views/auth/login.dart';
import 'Views/auth/register.dart';
import 'Views/home/home.dart';
import 'Views/posts/show.dart';
import 'Views/user/profile.dart';

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
  List _screens = [
    Home(),
    Login(),
    Register(),
    ShowPost(),
    Profile(),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 30,
          selectedFontSize: 13,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "الرئيسية",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "الملف الشخصي",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.add,
              ),
              label: "اضافة اعلان",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "بحث",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "دخول",
            ),
          ],
        ),
      ),
    );
  }
}
