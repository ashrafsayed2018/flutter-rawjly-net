import 'package:flutter/material.dart';

class LikeNotification extends StatefulWidget {
  const LikeNotification({Key? key}) : super(key: key);

  @override
  State<LikeNotification> createState() => _LikeNotificationState();
}

class _LikeNotificationState extends State<LikeNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.height * 0.05, vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RichText(
            textDirection: TextDirection.rtl,
            text: const TextSpan(
              children: [
                TextSpan(text: ' اعجب', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' اشرف سيد', style: TextStyle(color: Colors.blue)),
                TextSpan(
                    text: ' باعلانك', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' على تعليقك', style: TextStyle(color: Colors.blue)),
                TextSpan(
                    text: ' 2 min ago ', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const Icon(Icons.notifications),
          const CircleAvatar(
            radius: 10,
            backgroundImage: NetworkImage('https://picsum.photos/200/300'),
          ),
        ],
      ),
    );
  }
}
