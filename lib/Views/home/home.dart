import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/widgets/CustomTab.dart';
import 'package:rawjly_net/Views/widgets/famous.dart';
import 'package:rawjly_net/Views/widgets/latest.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'روجلي',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Icon(Icons.menu_outlined),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'موقع روجلي للاعلانات المجانيه ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'اعلن عن كل شئ في موقع روجلي مجانا - اعلانات مجانيه في جميع المجالات ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 20),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 40),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const ScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        itemBuilder: (context, index) {
                          return const CustomTab();
                        },
                        itemCount: 10),
                  ),
                  const SizedBox(height: 20),
                  const FamousAds(),
                  const SizedBox(height: 20),
                  const Text(
                    'احدث الاعلانات',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const LatestAds(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
