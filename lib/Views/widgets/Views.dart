import 'package:flutter/material.dart';

class Views extends StatefulWidget {
  const Views({Key? key}) : super(key: key);

  @override
  State<Views> createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(' 76 '),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.remove_red_eye),
      ],
    );
  }
}
