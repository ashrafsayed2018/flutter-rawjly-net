import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/widgets/LikeNotification.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الاشعارات',
          style: TextStyle(color: Colors.red),
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 16,
          itemBuilder: (context, index) {
            return const LikeNotification();
          },
        ),
      ),
    );
  }
}
