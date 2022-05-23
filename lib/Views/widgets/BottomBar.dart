import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
